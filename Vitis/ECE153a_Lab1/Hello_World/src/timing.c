/*
 *timing.c: simple starter application for lab 1A and 1B
 *
 */
#define RESET_VALUE 10000
#define LOOP_DELAY 1000
#include <stdio.h>		// Used for printf()
#include <stdlib.h>		// Used for rand()
#include "xparameters.h"	// Contains hardware addresses and bit masks
#include "xil_cache.h"		// Cache Drivers
#include "xintc.h"		// Interrupt Drivers
#include "xtmrctr.h"		// Timer Drivers
#include "xtmrctr_l.h" 		// Low-level timer drivers
#include "xil_printf.h" 	// Used for xil_printf()
							// Provides a source of bus contention
#include "xgpio.h" 		// LED driver, used for General purpose I/i
#include "sevenSeg_new.h" // Seven Segment Display Driver
// #include "xscugic.h"

#define NUMBER_OF_TRIALS 1000
#define NUMBER_OF_BINS 100
#define BUFFER_SIZE (1024*1024)
unsigned int buffer[BUFFER_SIZE]; //buffer for read/write operations to the DDR memory

int c = 0;


//timer init and callback init

XGpio BtnGpio;
XIntc InterruptController;
XTmrCtr tmrctr;
unsigned int count = 0;
u32 btn_value;
int actual_btn_val;
int paused = 0;
int dir = 1;
u32 temp = 0;
u32 temp_temp = 0;

u32 div10;
u32 div100;
u32 div1000;
u32 div10000;
u32 div100000;
u32 div1000000;
u32 div10000000;
u32 div100000000;
u32 div1000000000;

u32 cycle_count = 0;


//BaseAddr points to the base (byte) address of the DDR2 Memory
u8 * BaseAddr = (u8 *) XPAR_MIG7SERIES_0_BASEADDR;

void GpioInterruptHandler(void *CallbackRef) {
    
    // Read the GPIO status
    btn_value = XGpio_DiscreteRead(&BtnGpio, 1);
    
    // Clear the interrupt status by reading the interrupt status register
    XGpio_InterruptClear(&BtnGpio, 1);

    // Perform actions based on the button press
    if (btn_value&1) {
        // xil_printf("Button 1 pressed!\n\r");
		actual_btn_val=1;
		dir = 1;
    } else if (btn_value & 0x2) {
        // xil_printf("Button 2 pressed!\n\r");
		paused = 0;
		actual_btn_val=2;
	} else if (btn_value & 0x4) {
        // xil_printf("Button 3 pressed!\n\r");
		actual_btn_val=3;
		paused = 1;
	} else if (btn_value & 8) {
        // xil_printf("Button 4 pressed!\n\r");
		actual_btn_val=4;
		dir = 0;
	} else if (btn_value &16) {
        // xil_printf("Button 5 pressed!\n\r");
		actual_btn_val=5;
		count = 0;
		paused = 0;
	}
    // Add more cases for additional buttons if necessary
}

void TmrHandler(void *Callback){
	u32 ControlStatusReg;
	/*
	 * Read the new Control/Status Register content.
	 */
	ControlStatusReg = XTimerCtr_ReadReg(tmrctr.BaseAddress, 0, XTC_TCSR_OFFSET);
	if(paused != 0 && dir == 0){
		count--;
	}else if(paused != 0 && dir == 1){
		count++;
	}
	if(count == 0){
		paused = 0;
		dir = 1;
	}			

	XTmrCtr_WriteReg(tmrctr.BaseAddress, 0, XTC_TCSR_OFFSET,
			ControlStatusReg |XTC_CSR_INT_OCCURED_MASK);

}

// Setup Interrupt System
int SetupInterruptSystem(XIntc *IntcInstancePtr) {
    int Status;

    // Initialize the interrupt controller driver
    Status = XIntc_Initialize(IntcInstancePtr, XPAR_INTC_0_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Connect the GPIO interrupt handler to the interrupt system
    Status = XIntc_Connect(IntcInstancePtr, XPAR_INTC_0_GPIO_0_VEC_ID,
                           (XInterruptHandler)GpioInterruptHandler,
                           &BtnGpio);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

	Status = XIntc_Connect(IntcInstancePtr, XPAR_MICROBLAZE_0_AXI_INTC_AXI_TIMER_0_INTERRUPT_INTR,
			(XInterruptHandler) TmrHandler, &tmrctr);
	if (Status != XST_SUCCESS) {
		xil_printf("Failed to connect the application  timer handlers to the interrupt controller...\r\n");
		return XST_FAILURE;
	}



    // Start the interrupt controller in real mode
    Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Enable the interrupt for the GPIO device
    XGpio_InterruptEnable(&BtnGpio, 1);
    XGpio_InterruptGlobalEnable(&BtnGpio);

	// Enable the interupt for the TmrCtr
	Status = XTmrCtr_Initialize(&tmrctr, XPAR_AXI_TIMER_0_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("Timer initialization failed...\r\n");
		return XST_FAILURE;
	}

	XTmrCtr_SetOptions(&tmrctr, 0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);
	XTmrCtr_SetResetValue(&tmrctr, 0, 0xFFFFFFFF - RESET_VALUE);// 1000 clk cycles @ 100MHz = 10us
	XTmrCtr_Start(&tmrctr, 0);

    // Enable the interrupt in the interrupt controller
    XIntc_Enable(IntcInstancePtr, XPAR_INTC_0_GPIO_0_VEC_ID);
	XIntc_Enable(IntcInstancePtr, XPAR_MICROBLAZE_0_AXI_INTC_AXI_TIMER_0_INTERRUPT_INTR);

    // Enable interrupts in the processor
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XIntc_InterruptHandler,
                                 IntcInstancePtr);
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

void delay(int n){
	int i;
	for(i=0;i<n;i++){}
}

int main() {
	int Status;
    // Caches enabled here -- Diasble if you want alternate measurements
	Xil_ICacheInvalidate();
	Xil_ICacheEnable();
	Xil_DCacheInvalidate();
	Xil_DCacheEnable();
	print("---Entering main---\n\r");
	u32 i = 0;
	int timer_val_before; //Used to store the timer value before executing the operation being timed
	u32 Addr;
	volatile unsigned int Data;

	//timer interupt
	// print("---XIntc_Initialize---\n\r");
	// XIntc_Initialize(&timer_ctrl, XPAR_MICROBLAZE_0_AXI_INTC_DEVICE_ID);
	// print("---XIntc_Connect---\n\r");
	// XIntc_ConnectXIntc_Connect(&timer_ctrl, XPAR_MICROBLAZE_0_AXI_INTC_AXI_TIMER_0_INTERRUPT_INTR, (XInterruptHandler) timer_callback, &timer);
	// print("---XIntc_Start---\n\r");
	// XIntc_Start(&timer_ctrl, XIN_REAL_MODE);
	// print("---XIntc_Enable---\n\r");
	// XIntc_Enable(&timer_ctrl, XPAR_MICROBLAZE_0_AXI_INTC_AXI_TIMER_0_INTERRUPT_INTR);
	// print("---XTmrCtr_Initialize---\n\r");
	// XTmrCtr_Initialize(&timer, XPAR_MICROBLAZE_0_AXI_INTC_DEVICE_ID);
	// print("---XTmrCtr_SetOptions---\n\r");
	// XTmrCtr_SetOptions(&timer, 0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);
	// print("---XTmrCtr_SetResetValue---\n\r");
	// XTmrCtr_SetResetValue(&timer, 0, 0xFFFFFFFF - RESET_VALUE);
	// print("---XTmrCtr_Start---\n\r");
	// XTmrCtr_Start(&timer, 0);
	//extra_method();


	XGpio_Initialize(&BtnGpio, XPAR_AXI_GPIO_BTN_DEVICE_ID);

	
	Status = SetupInterruptSystem(&InterruptController);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

	// extra_method();

	while(1){
			div10 = count/10; // I cheated lol but it became too fucked up
			div100 = count/100;
			div1000 = count/1000;
			div10000 = count/10000;
			div100000 = count/100000;
			div1000000 = count/100000;
			div10000000 = count/1000000;
			div100000000 = count/100000000;
			div1000000000 = count/1000000000;


			// div1000 = (div100*6554) >> 16;
			// div10000 = (div100*655) >> 16;
			// div100000 = (div10000*6554) >> 16;
			// div1000000 = (div10000*655) >> 16;
			// div10000000 = (div1000000*6554) >> 16;
			// div100000000 = (div1000000*655) >> 16;


			sevenseg_draw_digit(0,count-10*div10);
			delay(100);
			sevenseg_draw_digit(1,div10-10*div100);
			delay(100);
			sevenseg_draw_digit(2,div100-10*div1000);
			delay(100);
			sevenseg_draw_digit(3,div1000-10*div10000);
			delay(100);
			sevenseg_draw_digit(4,div10000-10*div100000);
			delay(100);
			sevenseg_draw_digit(5,div100000-10*div1000000);
			delay(100);
			sevenseg_draw_digit(6,div1000000-10*div10000000);
			delay(100);
			sevenseg_draw_digit(7,div10000000-10*div100000000);
			delay(100);
			sevenseg_draw_digit(8,div100000000-10*div1000000000);
			delay(100);
		//delay(1000);
		// printf("%d\n\r",div10-10*(div100-(div1000-10*(div10000-10*(div100000-10*div1000000)))));
			
			cycle_count++;
			if(count >= 100000){
				printf("%d\n\r",cycle_count);
				cycle_count = 0;
				count=0;
			}


	}




	// Extra Method contains an interrupt routine which is set to go off at timed intervals
	//extra_method();

	//TIMER RESET CODE
	//Turn off the timer
	XTmrCtr_SetControlStatusReg(XPAR_TMRCTR_0_BASEADDR, 1, 0);
	//Put a zero in the load register
	XTmrCtr_SetLoadReg(XPAR_TMRCTR_0_BASEADDR, 1, 0);
	//Copy the load register into the counter register
	XTmrCtr_SetControlStatusReg(XPAR_TMRCTR_0_BASEADDR, 1, XTC_CSR_LOAD_MASK);
	//Enable (start) the timer
	XTmrCtr_SetControlStatusReg(XPAR_TMRCTR_0_BASEADDR, 1,
			XTC_CSR_ENABLE_TMR_MASK);
	//END TIMER RESET CODE
}

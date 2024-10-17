/*
 *timing.c: simple starter application for lab 1A and 1B
 *
 */

#include <stdio.h>		// Used for printf()
#include <stdlib.h>		// Used for rand()
#include "xparameters.h"	// Contains hardware addresses and bit masks
#include "xil_cache.h"		// Cache Drivers
#include "xintc.h"		// Interrupt Drivers
#include "xtmrctr.h"		// Timer Drivers
#include "xtmrctr_l.h" 		// Low-level timer drivers
#include "xil_printf.h" 	// Used for xil_printf()
#include "extra.h" 		// Provides a source of bus contention
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



//BaseAddr points to the base (byte) address of the DDR2 Memory
u8 * BaseAddr = (u8 *) XPAR_MIG7SERIES_0_BASEADDR;

void GpioInterruptHandler(void *CallbackRef) {
    u32 btn_value;
    
    // Read the GPIO status
    btn_value = XGpio_DiscreteRead(&BtnGpio, 1);
    
    // Clear the interrupt status by reading the interrupt status register
    XGpio_InterruptClear(&BtnGpio, 1);

    // Perform actions based on the button press
    if (btn_value&1) {
        xil_printf("Button 1 pressed!\n\r");
    } else if (btn_value & 0x2) {
        xil_printf("Button 2 pressed!\n\r");
	} else if (btn_value & 0x4) {
        xil_printf("Button 3 pressed!\n\r");
	} else if (btn_value & 8) {
        xil_printf("Button 4 pressed!\n\r");
	} else if (btn_value &16) {
        xil_printf("Button 5 pressed!\n\r");
	} else if (btn_value &32) {
        xil_printf("Button 6 pressed!\n\r");
	} else if (btn_value &64) {
        xil_printf("Button 7 pressed!\n\r");
    }
    // Add more cases for additional buttons if necessary
}

// Setup Interrupt System
int SetupInterruptSystem(XIntc *IntcInstancePtr) {
    int Status;

    // Initialize the interrupt controller driver
    Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
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

    // Start the interrupt controller in real mode
    Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    // Enable the interrupt for the GPIO device
    XGpio_InterruptEnable(&BtnGpio, 1);
    XGpio_InterruptGlobalEnable(&BtnGpio);

    // Enable the interrupt in the interrupt controller
    XIntc_Enable(IntcInstancePtr, XPAR_INTC_0_GPIO_0_VEC_ID);

    // Enable interrupts in the processor
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XIntc_InterruptHandler,
                                 IntcInstancePtr);
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

int main() {
	int Status;
    // Caches enabled here -- Diasble if you want alternate measurements
	Xil_ICacheInvalidate();
	Xil_ICacheEnable();
	Xil_DCacheInvalidate();
	Xil_DCacheEnable();
	print("---Entering main---\n\r");
	int i = 0;
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
	// extra_method();


	XGpio_Initialize(&BtnGpio, XPAR_AXI_GPIO_BTN_DEVICE_ID);

	
	Status = SetupInterruptSystem(&InterruptController);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

	extra_method();

	while(1){
		//sevenseg_draw_digit(5,0);

		//printf("GPIO Value: %08b\n", XGpio_DiscreteRead(&BtnGpio, 1));
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
import matplotlib.pyplot as plt

thing = 4

# Data provided by the user
if thing == 0:
    #Int Add
    title = "Integer Addition Histogram Grouped into 50 Bins"
    bin_f_pf = [9485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 514]
elif thing == 1:
    #Float Add
    title = "Float Addition Histogram Grouped into 50 Bins"
    bin_f_pf = [9482, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 517, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
elif thing == 2:
    #LED Write
    title = "LED Write Histogram Grouped into 50 Bins"
    bin_f_pf = [8869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
elif thing == 3:
    #DDR Read
    title = "DDR2 Random Read Histogram Grouped into 50 Bins"
    bin_f_pf = [78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7741, 518, 206, 32, 18, 6, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1322, 27, 24, 4, 10]
elif thing == 4:
    #printf() float
    title = "USB Float Print Histogram Grouped into 50 Bins"
    bin_f_pf = [8954, 183, 241, 11, 24, 2, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 19, 29, 51, 59, 80, 64, 34, 31, 23, 17, 14, 21, 14, 7, 11, 10, 16, 18, 24, 9, 10, 3, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1]
elif thing == 5:
    #xil_printf() string
    title = "USB String Print Histogram Grouped into 50 Bins"
    bin_f_pf = [9701, 14, 41, 10, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 5, 17, 27, 36, 57, 32, 15, 4, 7, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 2, 4, 6, 2, 4, 1]


import numpy as np

# Data provided by the user
data = bin_f_pf
#divisor
divisor = 2
#bin_num
bin_num = len(data)/divisor

# Combine adjacent bins to reduce to 50 bins
grouped_bins = [sum(bin_f_pf[i:i+divisor]) for i in range(0, len(bin_f_pf), divisor)]

# Create histogram with 50 bins
plt.figure(figsize=(10,6))
plt.hist(range(len(grouped_bins)), weights=grouped_bins, bins=int(bin_num), edgecolor='black')

# Adding titles and labels
plt.title(title)
plt.xlabel("Bins")
plt.ylabel("Frequency")
plt.savefig(f"{title}.png")
# Show the plot
# plt.show()
# Save the plot with the title as the filename

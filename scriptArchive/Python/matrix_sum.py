#!/usr/bin/python3
#---------------------------------------
#		Matrix Sum
#---------------------------------------
#
#	Called by the respective .sh
#	script. This loads the each
#	argument into an array, then
#	sums each entry.
#
#	Version 1.0
#	JM	17th September 2018
#
#---------------------------------------

import sys
import numpy as np
import pandas as pd

# Capture the command line argument
LIST_OF_INPUT_ARRAYS = []
ARGUMENTS=1
while ARGUMENTS <= (len(sys.argv)-1):
	arr = pd.read_csv(sys.argv[ARGUMENTS],sep='\t',header=None).values.astype(np.float64)
	LIST_OF_INPUT_ARRAYS.append(arr)
	ARGUMENTS += 1

# Check identical shape
i=0
while i <= (len(LIST_OF_INPUT_ARRAYS)-1):
	if np.shape(LIST_OF_INPUT_ARRAYS[0]) != np.shape(LIST_OF_INPUT_ARRAYS[i]):
		sys.stderr.write("Error: Input arrays are of different sizes\n")
		exit()
	i += 1	

# Manipulate arrays
out = np.zeros_like(LIST_OF_INPUT_ARRAYS[0])
i=0
while i <= (len(LIST_OF_INPUT_ARRAYS)-1):
	out += LIST_OF_INPUT_ARRAYS[i]
	i += 1

# Return output
with np.printoptions(formatter={'float':'{:09.2f}'.format}, threshold=sys.maxsize, linewidth=12*np.shape(LIST_OF_INPUT_ARRAYS[0])[1]):
	print(out)


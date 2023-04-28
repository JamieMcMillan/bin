#!/usr/bin/python3
#---------------------------------------
#	      Matrix Scale
#---------------------------------------
#
#	Called by the respective .sh
#	script. This loads the each
#	argument from the second into
#	an array, then multiplies each 
#	entry by the first.
#
#	Version 1.0
#	JM	18th September 2018
#
#---------------------------------------

import sys
import numpy as np
import pandas as pd

# Capture the command line argument
LIST_OF_INPUT_ARRAYS = []
ARGUMENTS=2
while ARGUMENTS <= (len(sys.argv)-1):
	arr = pd.read_csv(sys.argv[ARGUMENTS],sep='\t',header=None).values.astype(np.float64)
	LIST_OF_INPUT_ARRAYS.append(arr)
	ARGUMENTS += 1

SCALE = float(sys.argv[1])

# Manipulate arrays
out = SCALE * LIST_OF_INPUT_ARRAYS[0]

# Return output
with np.printoptions(formatter={'float':'{:09.2f}'.format}, threshold=sys.maxsize, linewidth=12*np.shape(LIST_OF_INPUT_ARRAYS[0])[1]):
	print(out)

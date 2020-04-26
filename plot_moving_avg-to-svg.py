#!/usr/bin/python3

import pandas as pd
import matplotlib.pyplot as plt
import sys


if ( len(sys.argv) == 1 ):
    print ("Usage: " + sys.argv[0] + " Files...")
    exit(1)


ax = None
for f in sys.argv[1:]:
    d=pd.read_csv(f)
    d2=d.rolling(window=5).mean()
    
    if ax == None: # get axes from 1st plot
        ax =  d2.plot()
    else:
        d2.plot(ax=ax) # sub-sequent plots in same graph
#    plt.plot(d2)

plt.savefig(sys.stdout, format="svg")

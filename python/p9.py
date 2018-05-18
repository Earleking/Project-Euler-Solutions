# -*- coding: utf-8 -*-
"""
Created on Tue May 15 11:55:23 2018

@author: afielding
"""
import math, sys
for i in range(1, 500):
    for x in range(i, 1000 - i):
        if(math.sqrt(i*i + x*x) + i + x == 1000):
            print(math.sqrt(i*i + x*x) * i * x)
            sys.exit()
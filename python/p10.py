# -*- coding: utf-8 -*-
"""
Created on Tue May 15 12:00:55 2018

@author: afielding
"""

import math
def isPrime(n):
    s = int(math.sqrt(n))
    for x in range(2, s + 1):
        if(n % x == 0):
            return False
    return True

x = 2
y = 3
while (y <= 2000000):
    
    if(isPrime(y)):
        x += y
    y += 2
print(x)
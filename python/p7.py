# -*- coding: utf-8 -*-
"""
Created on Tue May 15 11:23:48 2018

@author: afielding
"""
import math
def isPrime(n):
    s = int(math.sqrt(n))
    for x in range(2, s + 1):
        if(n % x == 0):
            return False
    return True

x = 0
y = 1
while (x <= 10000):
    y += 1
    if(isPrime(y)):
        x += 1
print(y)
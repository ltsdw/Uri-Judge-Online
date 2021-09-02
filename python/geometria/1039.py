'''
title: Flores de Fogo
number of the problem: 1039
date: 30/03/2018
author: ltsdw
'''

from math import sqrt

while True:
    try:
        r1, x1, y1, r2, x2, y2 = map(int, input().split())
        d = sqrt(pow(x2-x1, 2)+pow(y2-y1, 2))+r2
        if r1 >= d:
            print('RICO')
        else:
            print('MORTO')
    except EOFError:
        break

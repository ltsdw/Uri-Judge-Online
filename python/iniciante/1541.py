'''
title: 1541 - Construindo Casas
number of the problem: 1541
date: 20/03/2018
author: ltsdw
'''

from math import trunc

while True:
    a, b, c = map(int, input().split())
    if a == 0:
        break
    else:
        area = a * b
        por = (area*100)/c
        res = pow(por,.5)
        print('{}'.format(trunc(res)))


'''
title: Fórmula de Bhaskara
number of the problem: 1036
date: 02/03/2018
author: ltsdw
'''

from math import sqrt

a, b, c = map(int, input('').split())

if a == 0:
    print('Impossivel calcular')
else:
    delta = (b*b) - (4 * a * c)

    if delta <= 0:
         print('Impossivel calcular')
    else:
        r1 = ((b * -1) + sqrt(delta)) / (2*a)
        r2 = ((b * -1) - sqrt(delta)) / (2*a)

        print(f'R1 = {r1:.5f}\nR2 = {r2:.5f}')


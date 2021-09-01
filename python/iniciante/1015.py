'''
title: Distância Entre Dois Pontos
number of the problem: 1015
date: 28/02/2018
author: ltsdw
'''

from math import sqrt

x1, y1 = map(int, str(input('')).split())
x2, y2 = map(int, str(input('')).split())

f = sqrt(((x2-x1)**2)+((y2-y1)**2))

print(f'{f:.4f}')

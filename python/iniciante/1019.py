'''
title: Conversão de Tempo
number of the problem: 1019
date: 02/03/2018
author: ltsdw
'''

s = int(input(''))
m = 0
h = 0

if s >= 60:
    m = s / 60
    s %= 60

if m >= 60:
    h = m / 60
    m %= 60

print(f'{h:.0f}:{m:.0f}:{s:.0f}')

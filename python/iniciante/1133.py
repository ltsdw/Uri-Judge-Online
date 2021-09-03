'''
title: Resto da Divisão
number of the problem: 1133
date: 11/03/2018
author: ltsdw
'''

x = int(input())
y = int(input())

if x > y: x, y = y, x

for i in range(x, y):
    if i % 5 == 2 or i % 5 == 3: print(i)


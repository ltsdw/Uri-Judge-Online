'''
title: Múltiplos de 13
number of the problem: 1132
date: 11/03/2018
author: ltsdw
'''

s =  0
x = int(input())
y = int(input())

if x > y: x, y = y, x

for c in range(x, y):
    if c % 13: s += c

print(s)


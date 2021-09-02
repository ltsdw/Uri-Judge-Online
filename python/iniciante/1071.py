'''
title: Soma de Impares Consecutivos I
number of the problem: 1071
date: 07/03/2018
author: ltsdw
'''

n1 = int(input())
n2 = int(input())

s = 0

for c in range(min(n1, n2)+1, max(n1, n2)):
    if c % 2: s += c

print(s)


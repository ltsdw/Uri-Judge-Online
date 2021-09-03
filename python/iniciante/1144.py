'''
title: Sequência Lógica
number of the problem: 1144
date: 19/03/2018
author: ltsdw
'''

a = b = c = 0
n = int(input())

for i in range(1,n+1):
    a += 1
    b = i ** 2
    c = i ** 3
    for j in range(2):
        print('{} {} {}'.format(a, b, c))
        b += 1
        c += 1

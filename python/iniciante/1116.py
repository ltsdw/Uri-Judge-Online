'''
title: Dividindo X por Y
number of the problem: 1116
date: 09/03/2018
author: ltsdw
'''

for _ in range(int(input())):
    a, b = map(float, input().split())
    try:
        d = a / b
        print(d)
    except ZeroDivisionError: print('divisao impossivel')


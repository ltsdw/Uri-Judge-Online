'''
title: O Maior
number of the problem: 1013
date: 28/02/2018
author: ltsdw
'''

def my_max(a, b):
    return (a+b+abs(a-b))/2

a, b, c = map(int, input('').split())

maior = my_max(my_max(a, b), c)

print(f'{maior:.0f} eh o maior')

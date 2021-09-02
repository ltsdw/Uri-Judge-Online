'''
title: Quadrado de Pares
number of the problem: 1073
date: 07/03/2018
author: ltsdw
'''

for i in range(2, int(input())+1):
    if not (i % 2):
        q = i ** 2
        print(f'{i}^2 = {q}')


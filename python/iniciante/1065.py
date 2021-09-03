'''
title: Pares entre Cinco Números
number of the problem: 1065
date: 06/03/2018
author: ltsdw
'''

cont = 0
for _ in range(5):
    n = int(input())

    if not n % 2: cont += 1

print(f'{cont} valores pares')


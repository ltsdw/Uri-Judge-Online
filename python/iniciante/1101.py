'''
title:  Sequência de Números e Soma
number of the problem: 1101
date: 07/03/2018
author: ltsdw
'''

while True:
    s = 0
    a, b = map(int, input().split())

    if a <= 0 or b <= 0: break
    else:
        for c in range(min(a, b), max(a, b)+1):
            s += c
            print(f'{c}', end=' ')
        print(f'Sum={s}')


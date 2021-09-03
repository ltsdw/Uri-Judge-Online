'''
title: Positivos e Média
number of the problem: 1064
date: 06/03/2018
author: ltsdw
'''

cont = 0
s = 0
media = 0.0

for _ in range(6):
    n = float(input(''))

    if n > 0:
        cont += 1
        s += n
        media = s / cont

print(f'{cont} valores positivos')
print(f'{media:.1f}')


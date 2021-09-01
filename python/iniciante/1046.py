'''
title: Tempo de Jogo
number of the problem: 1046
date: 05/03/2018
author: ltsdw
'''

c1, c2 = map(int, input('').split())

cn = 0

if c2 > c1:
    for c1 in range(c1, c2):
        cn += 1
    print(f'O JOGO DUROU {cn} HORA(S)')
else:
    for c1 in range(c1, 24):
        c2 += 1
    print(f'O JOGO DUROU {c2} HORA(S)')


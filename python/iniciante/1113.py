'''
title: Crescente e Decrescente
number of the problem: 1113
date: 09/03/2018
author: ltsdw
'''

while True:
    a, b = map(int, input().split())

    if a == b: break
    else:
        if a > b: print('Decrescente')
        else: print('Crescente')


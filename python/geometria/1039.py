'''
title: Teste de Seleção 1
number of the problem: 1035
date: 02/03/2018
author: ltsdw
'''

A, B, C, D = map(int, input('').split())

if B > C and D > A and C + D > A + B and C > 0 and D > 0 and A % 2 == 0: print('Valores aceitos')
else: print('Valores nao aceitos')

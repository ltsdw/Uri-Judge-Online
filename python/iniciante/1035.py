'''
title: Teste de Seleção 1
number of the problem: 1035
date: 02/03/2018
author: ltsdw
'''


a, b, c, d = map(int, input('').split())

if b > c and d > a and c + d > a + b and c > 0 and d > 0 and a % 2 == 0: print('Valores aceitos')
else: print('Valores nao aceitos')

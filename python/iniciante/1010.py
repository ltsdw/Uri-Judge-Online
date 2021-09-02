'''
title: Cálculo Simples
number of the problem: 1010
date: 27/02/2018
author: ltsdw
'''

_, qnt1, prec1 = map(float, input('').split())
_, qnt2, prec2 = map(float, input('').split())

valor = (qnt1 * prec1) + (qnt2 * prec2)

print(f'VALOR A PAGAR: R$ {valor:.2f}')


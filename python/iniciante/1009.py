'''
title: Salário com Bônus
number of the problem: 1009
date: 27/02/2018
author: ltsdw
'''

n = str(input(''))
s = float(input(''))
v = float(input(''))

sal = s + (v * 15 / 100)

print(f'TOTAL = R$ {sal:.2f}')


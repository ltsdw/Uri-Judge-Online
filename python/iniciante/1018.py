'''
title: Cédulas
number of the problem: 1018
date: 05/03/2018
author: ltsdw
'''

v = int(input(''))

t = v

n100 = v // 100
v %= 100

n50 = v // 50
v %= 50

n20 = v // 20
v %= 20

n10 = v // 10
v %= 10

n5 = v // 5
v %= 5

n2 = v // 2
v %= 2

n1 = v // 1
v %= 1

print(f'''{t}
{n100} nota(s) de R$ 100,00
{n50} nota(s) de R$ 50,00
{n20} nota(s) de R$ 20,00
{n10} nota(s) de R$ 10,00
{n5} nota(s) de R$ 5,00
{n2} nota(s) de R$ 2,00
{n1} nota(s) de R$ 1,00''')


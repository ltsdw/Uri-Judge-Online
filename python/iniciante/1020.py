'''
title: Idade em Dias
number of the problem: 1020
date: 02/03/2018
author: ltsdw
'''

d1 = int(input(''))

a = int(d1 / 365)
m = int(d1 % 365 / 30)
d = int(d1 % 365 % 30)

print(f'''{a} ano(s)
{m} mes(es)
{d} dia(s)''')

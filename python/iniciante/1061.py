'''
title: Tempo de um Evento
number of the problem: 1061
date: 05/03/2018
author: ltsdw
'''

diaini = input().split()[1]
hi, mi, si = map(int, input().split(':'))

diafin = input().split()[1]
hf, mf, sf = map(int, input().split(':'))

dia = int(diafin) - int(diaini)

hora = hf - hi
if hora < 0:
    hora = 24 + (hf - hi)
    dia -= 1

min_ = mf - mi
if min_ < 0:
    min_ = 60 + (mf - mi)
    hora -= 1

seg = sf - si
if seg < 0:
    seg = 60 + (sf - si)
    min_ -= 1
if dia <= 0:
    dia = 0

print(f'''{dia} dia(s)
{hora} hora(s)
{min_} minuto(s)
{seg} segundo(s)''')


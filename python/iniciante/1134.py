'''
title: Tipo de Combustível
number of the problem: 1134
date: 11/03/2018
author: ltsdw
'''

a = b = c = 0

while True:
    esc = int(input())
    if esc < 1 and esc > 4:
        continue
    if esc == 4:
        print(f'MUITO OBRIGADO\nAlcool: {a}\nGasolina: {b}\nDiesel: {c}')
        break
    else:
        if esc == 1: a += 1
        if esc == 2: b += 1
        if esc == 3: c += 1



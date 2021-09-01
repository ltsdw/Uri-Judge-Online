'''
title: Intervalo
number of the problem: 1037
date: 02/03/2018
author: ltsdw
'''

n = float(input(''))

if n < 0 or n > 100.0:
    print('Fora de intervalo')
else:
    if n >= 0 and n <= 25.00:
        print('Intervalo [0,25]')
    elif n > 25.00 and n <= 50.00:
        print('Intervalo (25,50]')
    elif n > 50.00 and n <= 75.00:
        print('Intervalo (50,75]')
    else:
        print('Intervalo (75,100]')


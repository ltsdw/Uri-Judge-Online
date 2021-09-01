'''
title: Múltiplos
number of the problem: 1044
date: 04/03/2018
author: ltsdw
'''

xs = sorted(map(int, input('').split()))

if xs[1] % xs[0]:
    print('Nao sao Multiplos')
else:
    print('Sao Multiplos')


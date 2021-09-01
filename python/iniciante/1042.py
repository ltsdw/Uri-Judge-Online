'''
title: Sort Simples
number of the problem: 1042
date: 04/03/2018
author: ltsdw
'''

xs = [int(x) for x in input('').split()]

xs_ = xs[:]
xs_.sort()

for x in xs_:
    print(x)

print('')

for x in xs:
    print(x)


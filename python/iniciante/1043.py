'''
title: Triângulo
number of the problem: 1043
date: 04/03/2018
author: ltsdw
'''

a, b, c = map(float, input('').split())

if a + b > c and c + a > b and c + b > a:
    print(f'Perimetro = {a + b + c:.1f}')
else:
    print(f'Area = {(a + b) * c / 2:.1f}')

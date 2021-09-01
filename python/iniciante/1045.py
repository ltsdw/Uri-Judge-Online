'''
title: Tipos de Triângulos
number of the problem: 1045
date: 04/03/2018
author: ltsdw
'''

a, b, c = sorted(map(float, input('').split()), reverse=True)

if a >= b + c:
    print('NAO FORMA TRIANGULO')
else:
    if a * a == b * b + c * c:
        print('TRIANGULO RETANGULO')
    if a**2 > b * b + c * c:
        print('TRIANGULO OBTUSANGULO')
    if a**2 < b * b + c * c:
        print('TRIANGULO ACUTANGULO')
    if a == b and c == b:
        print('TRIANGULO EQUILATERO')
    if a == b and a != c:
        print('TRIANGULO ISOSCELES')
    if c == b and c != a:
        print('TRIANGULO ISOSCELES')
    if c == a and a != b:
        print('TRIANGULO ISOSCELES')


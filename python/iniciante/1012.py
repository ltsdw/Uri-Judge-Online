'''
title: Área
number of the problem: 1012
date: 27/02/2018
author: ltsdw
'''

pi = 3.14159

a, b, c = map(float, input('').split())

tri = (a * c) / 2
cir = pi * c**2
tra = (a + b) * c / 2
qua = b**2
ret = a * b

print(f'''TRIANGULO: {tri:.3f}
CIRCULO: {cir:.3f}
TRAPEZIO: {tra:.3f}
QUADRADO: {qua:.3f}
RETANGULO: {ret:.3f}''')

'''
title: Área do Círculo
number of the problem: 1002
date: 27/02/2018
author: ltsdw
'''

def area(raio: float) -> float:
    pi: float = 3.14159
    
    return pi*raio**2


raio = float(input(''))

print(f'A={area(raio):.4f}')

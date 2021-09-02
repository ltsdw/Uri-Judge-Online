'''
title: Pares, Ímpares, Positivos e Negativos
number of the problem: 1066
date: 06/03/2018
author: ltsdw
'''

contp = 0
conti = 0
contpo = 0
contne = 0

for _ in range(0, 5):
    n = int(input(''))

    if n % 2 == 0: contp += 1
    else: conti += 1

    '''explicit ignore 0'''
    if n > 0: contpo += 1
    if n < 0: contne += 1

print(f'''{contp} valor(es) par(es)
{conti} valor(es) impar(es)
{contpo} valor(es) positivo(s)
{contne} valor(es) negativo(s)''')


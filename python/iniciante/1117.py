'''
title: Validação de Nota
number of the problem: 1117
date: 09/03/2018
author: ltsdw
'''

nv1 = nv2 = 0

while True:
    if not nv1:
        n1 = float(input())

        if not (n1 < 0 or n1 > 10):
            nv1 = n1
        else:
            print('nota invalida')
            continue

    if not nv2:
        n2 = float(input())
  
        if not (n2 < 0 or n2 > 10):
            nv2 = n2
        else:
            print('nota invalida')
            continue

    m = (nv1 + nv2) / 2
 
    print(f'media = {m:.2f}')

    break


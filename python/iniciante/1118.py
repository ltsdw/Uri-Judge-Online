'''
title: Várias Notas Com Validação
number of the problem: 1118
date: 09/03/2018
author: ltsdw
'''

nv1 = nv2 = 0
d = 1

while True:
    if d == 1:
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
        nv1 = nv2 = 0

        print(f'media = {m:.2f}')

        d = int(input('novo calculo (1-sim 2-nao)\n'))
    elif d == 2:
        break
    else:
        d = int(input('novo calculo (1-sim 2-nao)\n'))


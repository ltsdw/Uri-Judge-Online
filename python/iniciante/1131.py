'''
title: Grenais
number of the problem: 1131
date: 10/03/2018
author: ltsdw
'''

vg = vi = emp = 0
c = 1

while True:
    i, g = map(int, input().split())

    if i > g: vi += 1
    elif g > i: vg += 1
    else: emp += 1

    if int(input('Novo grenal (1-sim 2-nao)\n')) == 1:
        c += 1
        continue
    else:
        print(f'''{c} grenais\nInter:{vi}\nGremio:{vg}\nEmpates:{emp}''')

        if vi > vg: print('Inter venceu mais')
        elif vg > vi: print('Gremio venceu mais')
        else: print('Nao houve vencedor')

        break


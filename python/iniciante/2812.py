'''
title: Laércio
number of the problem: 2812
date: 17/07/2019
author: ltsdw
'''

casos = int(input())

for c in range(casos):
    listaimp = []
    listaok = []

    tml = int(input())
    lista = [int(i) for i in input().split()]

    for i in range(tml):
        if lista[i] % 2 == 1:
            listaimp.append(lista[i])

    listaok = [0 for _ in range(len(listaimp))]

    for i in range(len(listaimp)):
        if i % 2 == 0:
            listaok[i] = max(listaimp)
            listaimp.remove(max(listaimp))
        else:
            listaok[i] = min(listaimp)
            listaimp.remove(min(listaimp))

    if c+1 < casos or len(listaok) != 0:
        print(*listaok)
        listaok = []
        listaimp = []
        lista = []


'''
title: Variações
number of the problem: 1632
date: 23/03/2018
author: ltsdw
'''

for _ in range(int(input())):
    v = 'AEIOS'
    r = 1
    l = input()

    for i in range(len(l)):
        b = False
        for j in range(5):
            if l[i] == v[j] or l[i] == v[j].lower(): b = True
        if b == True: r *= 3
        else: r *= 2

    print(r)


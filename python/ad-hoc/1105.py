'''
title: Sub-prime
number of the problem: 1105
date: 28/04/2018
author: ltsdw
'''

while(True):
    n_ban, n_ben = map(int, input().split())

    if n_ban == n_ben == 0: break;
    else:
        bool_ = False
        arr_valores = [0 for _ in range(n_ban + 1)]
        arr_valores[1::] = map(int, input().split())

        for i in range(n_ben):
            banco, credor, divida = map(int, input().split())
            arr_valores[banco] -= divida
            arr_valores[credor] += divida

        for i in range(1, n_ban + 1):
            if arr_valores[i] < 0:
                bool_ = True

        if bool_ == True: print('N')
        else: print('S')


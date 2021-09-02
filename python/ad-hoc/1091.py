'''
title: Divisão da Nlogônia
number of the problem: 1091
date: 03/05/2018
author: ltsdw
'''

while(True):
    n_casos = int(input())
    if n_casos == 0: break
    else:
        cord_n, cord_m = map(int, input().split())
        for i in range(n_casos):
            x, y = map(int, input().split())
            if x == cord_n or x == cord_m or y == cord_n or y == cord_m:
                print('divisa')
            else:
                if x > cord_n and y > cord_m: print('NE')
                elif x < cord_n and y > cord_m: print('NO')
                elif x < cord_n and y < cord_m: print('SO')
                else: print('SE')


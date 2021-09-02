'''
title: Médias Ponderadas
number of the problem: 1079
date: 07/03/2018
author: ltsdw
'''

for _ in range(0, int(input())):
    n1, n2, n3 = map(float, input().split())
    media = ((n1*2) + (n2*3) + (n3*5)) / 10
    print(f'{media:.1f}')


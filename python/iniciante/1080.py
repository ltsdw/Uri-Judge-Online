'''
title: Maior e Posição
number of the problem: 1080
date: 07/03/2018
author: ltsdw
'''

m = pos = 0
for i in range(1, 101):
    num = int(input())
    if num > m:
        pos = i
        m = num

print(f'{m}\n{pos}')


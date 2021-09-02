'''
title: Intervalo 2
number of the problem: 1072
date: 07/03/2018
author: ltsdw
'''

cin = cout = 0

for c in range(0, int(input())):
    num = int(input())

    if num in range(10, 20): cin +=1
    else: cout += 1

print(f'{cin} in\n{cout} out')


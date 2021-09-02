'''
title: Par ou Ímpar
number of the problem: 1074
date: 07/03/2018
author: ltsdw
'''

for c in range(0, int(input())):
    num = int(input())

    if not num: print('NULL')
    else:
        if not (num % 2):
            print('EVEN',end=' ')
            if num > 0: print('POSITIVE')
            else: print('NEGATIVE')
        if num % 2:
            print('ODD',end=' ')
            if num > 0: print('POSITIVE')
            else: print('NEGATIVE')


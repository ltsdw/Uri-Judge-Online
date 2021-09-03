'''
title: Matriz Quadrada I
number of the problem: 1435
date: 17/03/2018
author: ltsdw
'''

while True:
    c = 0
    n = int(input())

    if n == 0:
        break
    for y in range(1, n+1):
        for x in range(1, n+1):
            c = y

            if x < c:
                c = x
            if n-y+1 < c:
                c = n-y+1
            if n-x+1 < c:
                c = n-x+1

            if x < n: print('{:>3}'.format(c),end=' ')
            else: print('{:>3}'.format(c))

    print()


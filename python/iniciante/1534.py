'''
title: Matriz 123
number of the problem: 1534
date: 19/03/2018
author: ltsdw
'''

while True:
    try:
        m = []
        n = int(input())
        for y in range(n):
            m.append([])
            for x in range(n):
                m[y].append(x)
                if y+x == n-1:
                    m[y-1][x-1] = 2
                elif y == x:
                    m[y-1][x-1] = 1
                else:
                    m[y-1][x-1] = 3
                if x < n - 1:
                    print('{}'.format(m[y-1][x-1]),end='')
                else:
                    print('{}'.format(m[y-1][x-1]))
    except EOFError:
        break

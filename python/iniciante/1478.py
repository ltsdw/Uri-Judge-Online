'''
title: Matriz Quadrada II
number of the problem: 1478
date: 19/03/2018
author: ltsdw
'''

while(True):
    m = []
    n = int(input())
    if n == 0:
        break
    for y in range(n):
        m.append([])
        for x in range(n):
            m[y].append(x)
            if y == 0: 
                m[y][x] = (y + x) + 1
            else:
                if((y + 1) - x) > 0:
                    m[y][x] = (y + 1) - x
                else:
                    m[y][x] = m[y - 1][x - 1]
            if x < n-1:
                print('{:>3}'.format(m[y][x]),end=' ')
            else:
                print('{:>3}'.format(m[y][x]))
    print()

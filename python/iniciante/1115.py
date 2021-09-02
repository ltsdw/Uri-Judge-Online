'''
title: Quadrante
number of the problem: 1115
date: 09/03/2018
author: ltsdw
'''

while True:
    x, y = map(int, input().split())

    if x and y:
        if x > 0 and y > 0:
            print('primeiro')
        if x < 0 and y > 0:
            print('segundo')
        if x < 0 and y < 0:
            print('terceiro')
        if x > 0 and y < 0:
            print('quarto')
    else:
        break


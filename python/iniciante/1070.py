'''
title: Seis Números Ímpares
number of the problem: 1070
date: 07/03/2018
author: ltsdw
'''

caso = int(input())
c = 6

while c:
    if caso % 2:
        print(caso)
        c -= 1
    caso += 1


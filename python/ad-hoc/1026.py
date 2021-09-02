'''
title: Carrega ou não Carrega?
number of the problem: 1026
date: 26/03/2018
author: ltsdw
'''

while True:
    try:
        l = input().split()
        print(int(l[0]) ^ int(l[1]))
    except EOFError:
        break


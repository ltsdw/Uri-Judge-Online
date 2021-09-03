'''
title: PUM
number of the problem: 1142
date: 12/03/2018
author: ltsdw
'''

c1 = c2 = c3 = 0
n = int(input())
for i in range(n):
    c1 += 1
    c2 += 2
    c3 += 3
    print(f'{c1} {c2} {c3} PUM')
    c1 += 3
    c2 += 2
    c3 += 1


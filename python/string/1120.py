'''
title: Revisão de Contrato
number of the problem: 1120
date: 11/03/2018
author: ltsdw
'''

l = []

while True:
    n, num = map(int, input().split())

    if not n and not num:
        break

    n = str(n)
    num = str(num)

    for _ in num:
        num = num.replace(n, '')
 
    if num == '':
        num = num.replace('', '0')
 
    l += [int(num)]

for i in l:
    print(i)


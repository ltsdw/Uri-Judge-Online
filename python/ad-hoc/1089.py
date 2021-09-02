'''
title: Loop Musical
number of the problem: 1089
date: 18/04/2018
author: ltsdw
'''

def picos(n):
    l = []

    qnt_picos = 0
    
    l[0::] = map(int, input().split())
    
    if (l[0] - l[n - 1]) * (l[0] - l[1]) > 0:
        qnt_picos += 1
    if (l[n - 1] - l[n - 2]) * (l[n - 1] - l[0]) > 0:
        qnt_picos += 1
       
    for i in range(1, n-1):
        if (l[i] - l[i - 1]) * (l[i] - l[i + 1]) > 0:
            qnt_picos += 1
     
    print(qnt_picos)

while True:
    n_valores = int(input())

    if n_valores == 0: break
    else: picos(n_valores)


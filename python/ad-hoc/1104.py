'''
title: Troca de Cartas
number of the problem: 1104
date: 26/04/2018
author: ltsdw
'''

while(True):
    a, b = map(int, input().split())
    if a == b == 0: break;
    
    else:
        c_a = c_b = 0
        
        l_a = input().split()
        l_b = input().split()
        max_ab = max(int(l_a[a - 1]), int(l_b[b - 1]))

        ar_alice = [0 for _ in range(max_ab)]
        ar_beatriz = [0 for _ in range(max_ab)]
        
        for i in range(a):
            ar_alice[int(l_a[i]) - 1] = int(l_a[i])
 
        for i in range(b):
            ar_beatriz[int(l_b[i]) - 1] = int(l_b[i])

        for i in range(max_ab):
            if ar_alice[i] != 0 and ar_beatriz[i] == 0:
                c_a += 1
            if ar_alice[i] == 0 and ar_beatriz[i] != 0:
                c_b += 1

        print(min(c_a, c_b))


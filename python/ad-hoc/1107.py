'''
title: Escultura à Laser
number of the problem: 1107
date: 02/05/2018
author: ltsdw
'''

while(True):
    alt, comp = map(int, input().split())

    if alt == comp == 0: break;
    else:
        arr_laser = []
        arr_laser[0::] = map(int, input().split())
        resultado_final = alt - arr_laser[0]

        for i in range(1, comp):
            if arr_laser[i - 1] > arr_laser[i]:
                resultado_final += arr_laser[i - 1] - arr_laser[i]

        print(resultado_final)


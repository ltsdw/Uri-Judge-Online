'''
title: Alarme Despertador
number of the problem: 1103
date: 25/04/2018
author: ltsdw
'''

while(True):
    hr_inicial, min_inicial, hr_final, min_final = map(int, input().split())

    if hr_inicial == min_inicial == hr_final == min_final == 0: break
    else:
        if hr_inicial == 0: despertar = 24 * 60 + min_inicial
        else: despertar = hr_inicial * 60 + min_inicial

        if hr_final == 0: despertar_ = 24 * 60 + min_final
        else: despertar_ = hr_final * 60 + min_final

        min_default = despertar - despertar_
        min_ = despertar_ - despertar
        var_h = 24*60

        if despertar_ > despertar: print(min_)
        else: print(var_h - min_default)


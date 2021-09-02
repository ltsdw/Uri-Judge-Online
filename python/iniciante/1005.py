'''
title: Média 1
number of the problem: 1005
date: 27/02/2018
author: ltsdw
'''

def media(a, b):
    az = 3.5
    bz = 7.5

    return  ((a*az) + (b*bz)) / (az + bz)

a = float(input(''))
b = float(input(''))

print(f'MEDIA = {media(a, b):.5f}')


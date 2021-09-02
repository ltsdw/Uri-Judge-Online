'''
title: Média 2
number of the problem: 1006
date: 27/02/2018
author: ltsdw
'''

def media2(a, b, c):
    az = 2
    bz = 3
    cz = 5

    return ((a*az) + (b*bz) + (c*cz)) / (az + bz + cz)

a = float(input(''))
b = float(input(''))
c = float(input(''))

print(f'MEDIA = {media2(a, b, c):.1f}')


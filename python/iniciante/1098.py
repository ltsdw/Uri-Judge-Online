'''
title: 1098 - Sequencia IJ 4
number of the problem: 1098
date: 08/03/2018
author: ltsdw
'''


i = 0
j = 1

while i <= 2.1:
    print('I={:.1f} J={:.1f}'.format(i, j+i).replace('.0',''))
    print('I={:.1f} J={:.1f}'.format(i, j+1+i).replace('.0',''))
    print('I={:.1f} J={:.1f}'.format(i, j+2+i).replace('.0',''))
    i += 0.2

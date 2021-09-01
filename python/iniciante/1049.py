'''
title: Animal
number of the problem: 1049
date: 05/03/2018
author: ltsdw
'''

t1 = str(input(''))
t2 = str(input(''))
t3 = str(input(''))

if t1 == 'vertebrado':
    if t2 == 'mamifero':
        if t3 == 'onivoro':
            print('homem')
        else:
            print('vaca')
    else:
        if t3 == 'carnivoro':
            print('aguia')
        else:
            print('pomba')
else:
    if t2 == 'inseto':
        if t3 == 'hematofago':
            print('pulga')
        else:
            print('lagarta')
    else:
        if t3 == 'hematofago':
            print('sanguessuga')
        else:
            print('minhoca')


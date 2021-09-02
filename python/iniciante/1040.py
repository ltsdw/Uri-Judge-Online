'''
title: Média 3
number of the problem: 1040
date: 03/03/2018
author: ltsdw
'''

n1, n2, n3, n4 = map(float, input('').split())
media = ((n1*2) + (n2*3) + (n3*4) + (n4*1)) / 10

if media >= 7:
    print(f'Media: {media:.1f}\nAluno aprovado.')
if media < 5:
    print(f'Media: {media:.1f}\nAluno reprovado.')
if media >= 5 and media <= 6.9:
    print(f'Media: {media:.1f}\nAluno em exame.')
    exame = float(input(''))
    mediae = (exame + media) / 2
    print(f'Nota do exame: {exame:.1f}\nAluno aprovado.\nMedia final: {mediae:.1f}')


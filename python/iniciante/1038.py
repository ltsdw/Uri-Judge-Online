'''
title: Lanche
number of the problem: 1038
date: 02/03/2018
author: ltsdw
'''

cod, qnt = map(int, input('').split())

if cod == 1:
    print(f'Total: R$ {qnt * 4.00:.2f}')

elif cod == 2:
    print(f'Total: R$ {qnt * 4.50:.2f}')

elif cod == 3:
    print(f'Total: R$ {qnt * 5.00:.2f}')

elif cod == 4:
    print(f'Total: R$ {qnt * 2.00:.2f}')

else:
    print(f'Total: R$ {qnt * 1.50:.2f}')


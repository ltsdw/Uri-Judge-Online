
'''
title: Imposto de Renda
number of the problem: 1051
date: 05/03/2018
author: ltsdw
'''

if __name__ == '__main__':

    sal: float = float(input(''))
    imp: float

    if sal <= 2000.00:
        print('Isento')
    elif sal <= 3000.00:
        imp = ((sal-2000) * 8) / 100
        print(f'R$ {imp:.2f}')
    elif sal <= 4500.00:
        imp = (((sal-3000) * 18) / 100) + (1000*8/100)
        print(f'R$ {imp:.2f}')
    else:
        imp = (((sal-4500) * 28) / 100) + (1500*18/100) + (1000*8/100)
        print(f'R$ {imp:.2f}')


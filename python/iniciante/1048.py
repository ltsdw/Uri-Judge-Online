'''
title: Aumento de Salário
number of the problem: 1048
date: 05/03/2018
author: ltsdw
'''


if __name__ == '__main__':

    s: float = float(input(''))
    sr: float
    r: float

    if s <= 400.00:
        sr = s + ((s * 15) / 100)
        r = (s * 15) / 100

        print(f'''Novo salario: {sr:.2f}\nReajuste ganho: {r:.2f}\nEm percentual: 15 %''')
    elif s <= 800.00:
        sr = s + ((s * 12) / 100)
        r = (s * 12) / 100

        print(f'''Novo salario: {sr:.2f}\nReajuste ganho: {r:.2f}\nEm percentual: 12 %''')
    elif s <= 1200.00:
        sr = s + ((s * 10) / 100)
        r = (s * 10) / 100
        print(f'''Novo salario: {sr:.2f}\nReajuste ganho: {r:.2f}\nEm percentual: 10 %''')
    elif s <= 2000.00:
        sr = s + ((s * 7) / 100)
        r = (s * 7) / 100

        print(f'''Novo salario: {sr:.2f}\nReajuste ganho: {r:.2f}\nEm percentual: 7 %''')
    else:
        sr = s + ((s * 4) / 100)
        r = (s * 4) / 100

        print(f'''Novo salario: {sr:.2f}\nReajuste ganho: {r:.2f}\nEm percentual: 4 %''')


'''
title: Imposto de Renda
number of the problem: 1051
date: 05/03/2018
author: ltsdw
'''

if __name__ == '__main__':
    cem = cinquenta = vinte = dez = cinco = dois = 0 
    um = cinqcents = vintcents = dezcents = cincents = umcents = 0

    total = float(input(''))+0.001

    if (0 <= total <= 1000000.00):
        cem = total//100
        cinquenta = total%100//50
        vinte = total%100%50//20
        dez = total%50%20//10
        cinco = total%10//5
        dois = total%5//2
        um = total%100%50%20%10%5%2//1
        cinqcents = total%1//0.5
        vintcents = total%0.5//0.25
        dezcents = total%100%50%20%10%5%2%1%0.5%0.25//0.1
        cincents = total%100%50%20%10%5%2%1%0.5%0.25%0.1//0.05
        umcents = total%100%50%20%10%5%2%1%0.5%0.25%0.1%0.05//0.01

    print(f'''NOTAS:
{cem:.0f} nota(s) de R$ 100.00
{cinquenta:.0f} nota(s) de R$ 50.00
{vinte:.0f} nota(s) de R$ 20.00
{dez:.0f} nota(s) de R$ 10.00
{cinco:.0f} nota(s) de R$ 5.00
{dois:.0f} nota(s) de R$ 2.00
MOEDAS:
{um:.0f} moeda(s) de R$ 1.00
{cinqcents:.0f} moeda(s) de R$ 0.50
{vintcents:.0f} moeda(s) de R$ 0.25
{dezcents:.0f} moeda(s) de R$ 0.10
{cincents:.0f} moeda(s) de R$ 0.05
{umcents:.0f} moeda(s) de R$ 0.01''')


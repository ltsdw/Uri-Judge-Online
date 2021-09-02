'''
title: Experiências
number of the problem: 1094
date: 07/03/2018
author: ltsdw
'''

c = s = r = 0

for _ in range(int(input())):
    qt = str(input()).split()
    qt1 = int(qt[0])

    if 'S' in qt:
        s += qt1
    elif 'C' in qt:
        c += qt1
    else:
        r += qt1

tc = c + r + s
pc = (100 * c) / tc
ps = (100 * s) / tc
pr = (100 * r) / tc

print(f'''Total: {tc} cobaias
Total de coelhos: {c}
Total de ratos: {r}
Total de sapos: {s}
Percentual de coelhos: {pc:.2f} %
Percentual de ratos: {pr:.2f} %
Percentual de sapos: {ps:.2f} %''')

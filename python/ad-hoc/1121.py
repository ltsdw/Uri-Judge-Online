'''
title: Robô Colecionador
number of the problem: 1121
date: 7/5/2018
author: ltsdw
'''

while True:
    lin, col, inst = map(int, input().split())

    if lin == col == inst == 0: break;
    else:
        pos = ''
        figurinhas = 0
        x = y = 0
        matriz = [[] for _ in range(lin)]

        for i in range(lin):
            matriz[i] = list(input())

            for j in range(col):
                if matriz[i][j] == 'N' or matriz[i][j] == 'L' or matriz[i][j] == 'O' or matriz[i][j] == 'S':
                    x = i
                    y = j
                    pos = matriz[i][j]

        command = input()

        for i in range(inst):
            if command[i] == 'D':
                if pos == 'L': pos = 'S';
                elif pos == 'S': pos = 'O';
                elif pos == 'O': pos = 'N';
                elif pos == 'N': pos = 'L';

            elif command[i] == 'E':
                if pos == 'L': pos = 'N';
                elif pos == 'S': pos = 'L';
                elif pos == 'O': pos = 'S';
                elif pos == 'N': pos = 'O';

            elif command[i] == 'F':
                if pos == 'N':
                    if 0 <= x - 1 <= lin - 1 and matriz[x - 1][y] != '#':
                        x -= 1
                        if matriz[x][y] == '*':
                            figurinhas += 1
                            matriz[x][y] = '.'

                elif pos == 'S':
                    if 0 <= x + 1 <= lin - 1 and matriz[x + 1][y] != '#':
                        x += 1
                        if matriz[x][y] == '*':
                            figurinhas += 1
                            matriz[x][y] = '.'

                elif pos == 'L':
                    if 0 <= y + 1 <= col - 1 and matriz[x][y + 1] != '#':
                        y += 1
                        if matriz[x][y] == '*':
                            figurinhas += 1
                            matriz[x][y] = '.'

                elif pos == 'O':
                    if 0 <= y - 1 <= col - 1 and matriz[x][y - 1] != '#':
                        y -= 1
                        if matriz[x][y] == '*':
                            figurinhas += 1
                            matriz[x][y] = '.'

        print(figurinhas)


/* title: Tempo de Jogo com Minutos
 * problem number: 1047
 * date: 16/09/20
 * author: ltsdw
 */

#include <stdio.h>

void timeOfGame(int init_hours, int init_minutes, int final_hours, int final_minutes);

int main(void) {
    int init_hours, init_minutes, final_hours, final_minutes;
    scanf("%d%d%d%d", &init_hours, &init_minutes, &final_hours, &final_minutes);

    timeOfGame(init_hours, init_minutes, final_hours, final_minutes);

    return 0;
}

void timeOfGame(int init_hours, int init_minutes, int final_hours, int final_minutes) {
    int r_hours = final_hours - init_hours;
    int r_minutes = final_minutes - init_minutes;

    if (r_hours < 0) {
        r_hours += 24;

    }

    if (r_minutes < 0 ) {
        r_minutes += 60;
        r_hours--;
        if (r_hours < 0) {
            r_hours += 24;
        }
    }

    if ( (init_hours == final_hours) && (init_minutes == final_minutes) ) {
        printf("O JOGO DUROU 24 HORA(S) E 0 MINUTO(S)\n");
    } else {
        printf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n", r_hours, r_minutes);
    }
    return;
}

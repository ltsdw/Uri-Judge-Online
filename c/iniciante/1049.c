/* title: Animal
 * problem number: 1049
 * date: 17/09/20
 * author: ltsdw
 */

#include <stdio.h>
#include <string.h>

void animal(char *word1, char *word2, char *word3);

int main(void) {
    char word1[13], word2[13], word3[13];

    scanf("%s", word1);
    scanf("%s", word2);
    scanf("%s", word3);

    animal(word1, word2, word3);
}

void animal(char *word1, char *word2, char *word3) {
    if ( strcmp(word1, "vertebrado") == 0 ) {
        if ( strcmp(word2, "mamifero") == 0 ) {
            if ( strcmp(word3, "onivoro") == 0) {
                printf("homem\n");
            } else if ( strcmp(word3, "herbivoro") == 0 ) {
                printf("vaca\n");
            }
        } else if ( strcmp(word2, "ave" ) == 0 ) {
            if ( strcmp(word3, "carnivoro") == 0 ) {
                printf("aguia\n");
            } else if ( strcmp(word3, "onivoro") == 0 ) {
                printf("pomba\n");
            }
        }
    } else if ( strcmp(word1, "invertebrado") == 0 ) {
        if ( strcmp(word2, "inseto") == 0 ) {
            if ( strcmp(word3, "hematofago") == 0 ) {
                printf("pulga\n");
            } else if ( strcmp(word3, "herbivoro") == 0 ) {
                printf("lagarta\n");
            }
        } else if ( strcmp(word2, "anelideo") == 0 ) {
            if ( strcmp(word3, "hematofago") == 0 ) {
                printf("sanguessuga\n");
            } else if ( strcmp(word3, "onivoro") == 0 ) {
                printf("minhoca\n");
            }
        }
    }

    return;
}

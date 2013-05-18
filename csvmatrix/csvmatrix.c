#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MAX_OUT_NUMBER 100
#define OUT_BUFF_SIZE 4
#define NUM_ROWS 1000
#define NUM_COLS 1000

int main(int argc, char *argv[]) {
    FILE *fo;
    char strout[OUT_BUFF_SIZE];
    srand(time(NULL));
    fo = fopen("out.csv", "w");
    for (int i = 0; i < NUM_ROWS; i++) {
        for (int j = 0; j < NUM_COLS; j++) {
            int next = rand()%MAX_OUT_NUMBER;
            if (j) {
                snprintf(strout, OUT_BUFF_SIZE, ",%d", next);
            }
            else {
                snprintf(strout, OUT_BUFF_SIZE, "%d", next);
            }
            fputs(strout, fo);
        }
        fputs("\n",fo);
    }
    fclose(fo);
    return 0;
}


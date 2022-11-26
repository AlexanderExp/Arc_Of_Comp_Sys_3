#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

double function(double x);

int main(int argc, char *argv[]) {
    double x;
    double result;

    if (argc == 3) {
        if (!strcmp(argv[1], "random")) {
            srand(time(0));
            x = -1 + 2 * ((double) rand()) / RAND_MAX;
            result = function(x);
            FILE *output;
            output = fopen(argv[2], "w");
            fprintf(output, "Generated number: %lf", x);
            fprintf(output, "\nResult: %f", result);
            fclose(output);
            return 0;
        } else {
            FILE *input;
            input = fopen(argv[1], "r");
            if (input == NULL) {
                printf("File was not found\n");
                fclose(input);
                return 0;
            } else {
                fscanf(input, "%lf", &x);
            }
            fclose(input);

            result = function(x);

            FILE *output;
            output = fopen(argv[2], "w");
            fprintf(output, "%f", result);
            fclose(output);
            return 0;
        }
    }
    // cmd arg + Timer
    if (argc == 2) {
        time_t t_start = clock();
        printf("Enter your number (|x|<=1):");
        scanf("%lf", &x);
        for (int i = 0; i < 1000000; ++i) {
            function(x);
        }
        time_t t_end = clock();
        printf("Time: %d ms\n", (int) (difftime(t_end, t_start)) / 1000);
        result = function(x);
    }
    if (argc == 1) {
        printf("Random input or through command line (1 - cmd, 2 - random):");
        int answer = 0;
        scanf("%d", &answer);

        if (answer == 1) {
            printf("Enter your number (|x|<=1):");
            scanf("%lf", &x);
            result = function(x);
        } else {
            int seed;
            printf("Enter seed f:");
            scanf("%d", &seed);
            srand(seed);
            x = -1 + 2 * ((double) rand()) / RAND_MAX;
            printf("Generated number: %lf\n", x);
            result = function(x);
        }
    }
    printf("Result: %f\n", result);
}
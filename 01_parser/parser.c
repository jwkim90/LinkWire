#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char **argv) {
    int is_i=0, is_a=0;
    int c;
    char* dest;

    while( (c = getopt(argc, argv, "i:a")) != -1) {
        switch(c) {
            case 'i':
                is_i=1;
                printf("target interface: %s\n", optarg);
                break;
            case 'a':
                printf("A\n");
        }
    }

    return 0;

}

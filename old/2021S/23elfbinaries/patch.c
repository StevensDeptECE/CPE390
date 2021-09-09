#include <stdio.h>
#include <stdlib.h>

#define BUFSIZE 256
#define LINESIZE 1024

int main(int argc, char **argv)
{
    FILE *patch, *orig, *dest;
    char command[BUFSIZE];
    char line[LINESIZE];
    int lineno, linelen;
    if (argc != 4) {
        printf("Binary Patch Utility for CPE390 Labs\n"
                "Written by Peter Ho\n\n"
                "Usage:\n"
                "       %s [patch] [orig] [dest]\n"
                "Example:\n"
                "       %s mypatch.txt orig.out patched.out\n"
                "\n"
                "Patch file format:\n"
                "       addr: [4bytes] [4bytes] [4bytes] [...]\n"
                "Example:\n"
                "       10570: aaaaaaaa 7890cdef f00fbead\n"
                "       10738: dddddddd fffffffa\n",
                *argv, *argv);
        return 0;
    }

    patch = fopen(argv[1], "r");
    orig = fopen(argv[2], "r");

    if (!patch) {
        printf("Error: Cannot open %s", argv[1]);
        return 0;
    }
    if (!orig) {
        printf("Error: Cannot open %s", argv[2]);
        return 0;
    }

    snprintf(command, BUFSIZE, "cp %s %s", argv[2], argv[3]);
    system(command);

    dest = fopen(argv[3], "rb+");
    if (!dest) {
        printf("Error: Cannot open %s", argv[1]);
        return 0;
    }

    *line = '\0';
    lineno = 1;
    while (fscanf(patch, " %[^\n]%n", line, &linelen) == 1) {
        unsigned int addr;
        unsigned int val;
        int read, tmp;
        sscanf(line, " %x%n", &addr, &read);
        if (line[read++] != ':') {
            printf("Error: Line %x: Expected address\n", lineno);
            return 0;
        }
        fseek(dest, addr - 0x10000, SEEK_SET);
        printf("Patching %x with: ", addr);
        while ((read < linelen) && sscanf(line + read, " %x%n", &val, &tmp) == 1) {
            read += tmp;
            fwrite(&val, sizeof(int), 1, dest);
            printf("%.8x ", val);
        }
        printf("\n");
        ++lineno;
    }

    return 0;
}

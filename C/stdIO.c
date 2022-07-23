#include <stdio.h>
/*
* Text input and output, regardless of source or destination, is considerd a stream of characters
* A text stream is a sequence of charcters divided into lines
* Each line consists of zero or more characters followed by a newline character
* Simplest functions for reading and writing one character at a time: getchar() & putchar()
* A character written between single quotes represents an integer value equal to the numerical value of the character in the machine's character set
*/

int main(int argc, char const *argv[])
{
    char d = getchar();
    putchar(d);
    putchar(EOF);
    //getting multiple characters
    int c;
    c = getchar();
    while (c != EOF) {
        putchar(c);
        c = getchar();
    }
    while((c = getchar()) != EOF)
        putchar(c);
    return 0;
}

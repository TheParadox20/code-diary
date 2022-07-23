#include <stdio.h>
int main(int argc, char const *argv[])
{
    int nc, blanks, tabs, newlines, c;
    while ((c=getchar())!=EOF)
    {
        
        if (c==' ')
            blanks++;
        if (c=='\t')
            tabs++;
        if (c=='\n')
            newlines++;
        printf("Characters: %d\nBlanks: %d\nTabs: %d\nNewlines: %d",nc,blanks,tabs,newlines);
    }
    
    return 0;
}
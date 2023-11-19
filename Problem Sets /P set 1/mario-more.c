 #include <cs50.h>
#include <stdio.h>

int main(void)
{
    int n;
    do
    {
        n = get_int("what't the height?\n");
    }
    while (n < 1 || n > 8);

    for (int i = 0; i < n; i++)
    {
        for (int s = n-1; s > i; s--)
        {
            printf(" ");
        }

        for (int j = 0; j < i+1; j++)
        {
            printf("#");
        }

        printf("  ");

        for (int j = 0; j < i+1; j++)
        {
            printf("#");
        }

        printf("\n");
    }

}

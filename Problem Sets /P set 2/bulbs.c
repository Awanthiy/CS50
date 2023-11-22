#include <cs50.h>
#include <stdio.h>
#include <string.h>

const int BITS_IN_BYTE = 8;

void print_bulb(int bit);

int main(void)
{

    string msg = get_string("Message: ");


    for (int i = 0; msg[i] != msg[-1]; i++)
    {

        int decimal = msg[i];
        char byte[BITS_IN_BYTE];
        int pos = BITS_IN_BYTE - 1;


        for (int j = 0; j < BITS_IN_BYTE; j++)
        {
            byte[j] = '0';
        }


        while (decimal > 0)
        {
            if (decimal % 2 == 1)
            {
                byte[pos] = '1';
            }
            pos--;
            decimal = decimal / 2;
        }

         
        for (int j = 0; j < BITS_IN_BYTE; j++)
        {
            if (byte[j] == '1')
            {
                print_bulb(1);
            }
            else
            {
                print_bulb(0);
            }
        }
        printf("\n");
    }
}

void print_bulb(int bit)
{
    if (bit == 0)
    {
        // Dark emoji
        printf("\U000026AB");
    }
    else if (bit == 1)
    {
        // Light emoji
        printf("\U0001F7E1");
    }
}

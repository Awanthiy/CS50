#include <cs50.h>
#include <stdio.h>

int main(void)
{
     //declare a string with 'name' variable
  
      string name = get_string("What is your name: ");
  
   //then print the name with %s 
  
      printf("hello, %s\n", name);
}

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <math.h>

bool prime (long long int x)
{
        int i;
    for (i = 2; i < (sqrt(x) + 1); i++)
    {
        if (x % i == 0 && i != x){return false;}
    }
    return true;
}

bool isPalindrome (int x)
{
    if (x % 10 == 0) { return false; }
    int n = 0;
    while (x > n)
    {
        n = (n * 10) + (x % 10);
        x = x / 10;
        if (x == n || (x / 10) == n) {return true;}
    }
    return false;

}

int main(void) {
    int answer;
    for (answer = 997; answer > 0; answer = answer - 2 ) {
      if (isPalindrome(answer) && prime(answer)) break;
    }
    printf ("%d \n", answer);
}

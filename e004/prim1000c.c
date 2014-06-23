#include <stdio.h>
#include <stdbool.h>
#include <math.h>

bool prime (int x)
{
    int i;
    if (x == 2 || x == 3) {return true;}
    for (i = 2; i < (sqrt(x) + 1); i++)
    {
        if (x % i == 0 && i != x){return false;}
    }
    return true;
}

int main (void)
{
    int count = 0;
    int checknum = 3;
    int total = 2;
    while (count < 999)
    {
        if (prime(checknum))
        {
            count++;
            total = total + checknum;
            checknum = checknum + 2;
        } else {checknum = checknum + 2;}

    }


    printf("%d", (total));
    return 0;
}

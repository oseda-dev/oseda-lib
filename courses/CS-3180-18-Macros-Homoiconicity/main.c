#include <stdio.h>

#define SQUARE(x) ((x) * (x))

int main() {
    int num = 5;
    int squaredNum = SQUARE(num);

    printf("Square of 5: %d\n", squaredNum); // 25    
    
    return 0;
}
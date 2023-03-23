#include <stdio.h>

int main() {
    int arry[3] = {0, 1, 2};
    int i = 0;
    int x = 1;
    bool bool_value = true;
    
// out of bounds array access
    for (i = 0; i <= 3; i++) {
        printf("%d ", arry[i]);
    }
// incrementing a boolean variable
    while (bool_value) { 
        bool_value++; 
    }
// matching if and else if conditions
    if (x == 1) {
        printf("x = 0");
    } else if (x == 1) { 
        printf("x still = 0");
    }
 // zero division

    int y = 10 / x; 
    return 0;
}


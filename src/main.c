#include <stdio.h>

int getIntVal();
int setIntVal(int newVal);

int main() {

    // set the integer in memory
    setIntVal(55);

    // print the value in memory
    printf("The value of the int is: %d\n", getIntVal());

    // return success
    return 0;
}
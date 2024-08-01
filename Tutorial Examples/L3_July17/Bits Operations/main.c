#include <stdio.h>
#include <stdlib.h>
int main()
{
    int attend;

    attend = 0b00101111;
    printf("attend before do anything \t%x\n",attend);
    //Type here the code of SET BIT 4

    printf("attend after SET BIT 4\t\t%x\n",attend);
///////////////////////////////////////////////////////
    attend = 0b00101111;
    //Type here the code of RESET BIT 2
    //attend = attend & 0b11111011;
    attend = attend &  ~(1<<2);
    printf("attend after RESET BIT 2\t%x\n",attend);
///////////////////////////////////////////////////////
    attend = 0b00101111;
    //Type here the code of TOGGLE BIT 6

    printf("attend after TOGGLE BIT 6\t%x\n",attend);
///////////////////////////////////////////////////////
    return 0;
}

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int attend;
    attend  = 0b00101111;
    printf("attend before doing anything: \t%x\n",attend);

    //Type here the code for SET BIT 4
    attend = attend | (1<<4);
    printf("attend after SET BIT 4: \t%x\n",attend);

    //Type here code of RESET BIT 2
    attend  = 0b00101111;
    attend = attend & ~(1<<2);
    printf("attend after RESET BIT 2: \t%x\n",attend);

    //Type here the code to TOGGLE BIT 6
    attend  = 0b00101111;
    attend = attend ^ (1<<6);
    printf("attend after TOGGLE BIT 6: \t%x\n",attend);

    return 0;
}

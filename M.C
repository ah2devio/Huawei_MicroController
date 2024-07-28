#include <stdio.h>
#include <stdlib.h>
typedef unsigned char u8 ;
typedef unsigned int u32 ;

struct node{
int value;
struct node *next;
};

struct node *printer=NULL;

struct node *one=NULL;
struct node *two=NULL;
struct node *three=NULL;
struct node *four=NULL;
struct node *five=NULL;

int main()
{
one = malloc(sizeof(struct node));
two = malloc(sizeof(struct node));
three = malloc(sizeof(struct node));
four = malloc(sizeof(struct node));
five = malloc(sizeof(struct node));

one->value=128;
two->value=486;
three->value=4547;
four->value=64;
five->value=798;

one->next=two;
two->next=three;
three->next=four;
four->next=five;
five->next=NULL;


PrintLinkedList(one);

printf("Done!!!!");

}

PrintLinkedList(struct node *printer){
    while(printer!=NULL) {
        printf("%d\n",printer->value);
        printer=printer->next;
    }
}

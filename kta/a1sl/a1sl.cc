

#include "a1sl.h"
#include "string.h"

#include <stdio.h>      /* printf, scanf, NULL */
#include <stdlib.h>     /* malloc, free, rand */

static char*tmp=NULL;
#define TBS 10*1024+800
//*512

char *init_a1sl() {
    if(tmp==NULL)
    {
        tmp=(char*)calloc(TBS,sizeof(char));
    }
    unsigned int i;
    //for(i=0;i<TBS;i++)tmp[i]='\0';
    //tmp[i-1]='\n';
    sprintf(tmp,"test string %d with length %6.2f kbytes\n",0,((float)TBS)/1024.0f);
    return (char*)"Init a1sl...\n";
}

void deinit__a1sl()
{
    printf("deinit__a1sl tmp buff\n");
  if(tmp!=NULL)free(tmp);
  tmp=NULL;
}

A::A(){
printf("A init\n");
printf(tmp);
}
A::~A(){
printf("A gone\n");
}

#include"clsscr.h"
int main(int argc,char **argv)
{
	char ch[10];
	memset(ch,0,sizeof(ch));
	snprintf(ch,10,"12345");
	printf("C function will call asm function...\n");
	pntmsg(ch);
	return 0;
}


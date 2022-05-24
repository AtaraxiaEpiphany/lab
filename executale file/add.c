#include<stdio.h>
int add (int x,int y){
	return x+y;
}
int main(){
	int t1 = 125;
	int t2 = 80;
	int sum = add(t1,t2);
	printf("sum=%d\n",sum);
	return sum;
}

#include<stdio.h>
void bomb(){
	printf("The bomb has blown up!!!\n");
}

int fun(int edx,int esi,int edi){
	int eax = edx -esi;
	int ecx = 0;
	eax = eax>>1;
	ecx = eax+esi;
	if(ecx<=edi){
		eax = 0;
		if(ecx>=edi)	
			return eax;
		else{
			esi=ecx+1;
			eax = fun(edx,esi,edi);
			eax = eax+eax+1;
			return eax;
		}
	}
	else{
		edx=ecx-1;
		eax = fun(edx,esi,edi);
		eax = eax + eax;
		return eax;
	}
}
int main(){
	int n,m;
	int cnt;
	printf("input count numbers\n");
	scanf("%d",&cnt);
	for(int i=0;i<cnt;i++){
		scanf("%d %d",&n,&m);
		if(n>=0 && n<=14){
			int ret = fun(14,0,n);
			if(ret) {   // eax != 0
				bomb();
			}
			else{
				if(m == 0)
					printf("good!\n");
				else
					bomb();
			}
		}
		else
			bomb();
	}
}







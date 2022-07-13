
void select_fmt_print(char fmt,char size,uint8_t *add){
//select output format based on 'x','o','d','u' that identify hexadecimal,octal,signed int ,unsigned int successively.
//passing an uint8_t address(nedd to be converted.)
    switch(fmt){
        case 'x':{
            if(size == 'b'){
                uint8_t *haddr = (uint8_t*)add;
                printf("0x%02x",*haddr);
            }else if(size == 'h'){
                uint16_t *haddr = (uint16_t*)add;
                printf("0x%04x",*haddr);
            }else if(size =='w'){
                uint32_t *haddr = (uint32_t*)add;
                printf("0x%08x",*haddr);
            }else if(size =='g'){
                uint64_t *haddr = (uint64_t*)add;
                printf("0x%016lx",*haddr);
            }
            break;
         }
        case 'o':{
                 if(size == 'g'){
                    uint64_t *haddr = (uint64_t*)add;
                    printf("0%lo",*haddr);
                 }else if(size == 'w'){
                    uint32_t *haddr = (uint32_t*)add;
                    printf("0%-o",*haddr);
                 }else if(size == 'h'){
                    uint16_t *haddr = (uint16_t*)add;
                    printf("0%-o",*haddr);
                 }else if(size == 'b'){
                    uint8_t *haddr = (uint8_t*)add;
                    printf("0%-o",*haddr);
                 }
                 break; 
        }
        case 'd':{
                 if(size == 'g'){
                    uint64_t *haddr = (uint64_t*)add;
                    printf("%ld",*haddr);
                    break; 
                 }else if(size == 'w'){
                    uint32_t *haddr = (uint32_t*)add;
                    printf("%d",*haddr);
                    break;     
                 }else if(size == 'h'){
                    uint16_t *haddr = (uint16_t*)add;
                    printf("%d",*haddr);
                 }else if(size == 'b'){
                    uint8_t *haddr = (uint8_t*)add;
                    printf("%d",*haddr);
                 }
                 break;     

        }

        case 'u':{
                 if(size == 'g'){
                    uint64_t *haddr = (uint64_t*)add;
                    printf("%lu",*haddr);
                 }else if(size == 'w'){
                    uint32_t *haddr = (uint32_t*)add;
                    printf("%u",*haddr);
                 }else if(size == 'h'){
                    uint16_t *haddr = (uint16_t*)add;
                    printf("%u",*haddr);
                 }else if(size == 'b'){
                    uint8_t *haddr = (uint8_t*)add;
                    printf("%u",*haddr);
                 }
                 break;
        }
    }
}

void for_size_print(int count,char fmt,char size,uint8_t *add,int n){
    //the main form of outputing.
    int i;
    uint8_t *haddr = (uint8_t*)add;
    for(i=0;i<count;i++){
        if(i%n== 0){
            printf("%p:\t",haddr);
        }
        if( (i+1)%n ){
            select_fmt_print(fmt,size,haddr);
            printf("\t");
        }
        else{
            select_fmt_print(fmt,size,haddr);
            printf("\n");
        }
        switch(size){
            case 'b':
                haddr++;
                break;
            case 'h':
                haddr+=2;
                break;
            case 'w':
                haddr+=4;
                break;
            case 'g':
                haddr+=8;
                break;
        }
    }
    if(i%n)
        printf("\n");
}

void x_print(int count,char fmt,char size,uint8_t *add){
    int n;
    switch(size){
        case 'b':
            n = 8;
            for_size_print(count,fmt,size,add,n);
            break;
        case 'h':
            n = 8;
            for_size_print(count,fmt,size,add,n);
            break;
        case 'w':
            n = 4;
            for_size_print(count,fmt,size,add,n);
            break;
        case 'g':
            n = 2;
            for_size_print(count,fmt,size,add,n);
            break;
    }
}










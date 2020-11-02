#ifndef _MNIST_H_
#define _MNIST_H_
#include <stdlib.h>
#include <stdio.h>

  
FILE *fp = fopen("../../Data/sampels/mnist_csv/images_train.csv", "r");
    char buf; 

int** readMnist() {
   // transfer char to int in csv input
if (!fp) {
printf("Can't open file\n");
  //return 1;
     }
	int num=0,num_1=0,comma_count=0;
        int** mnistCont= new int* [28];
	for (int i=0;i<28;i++){
	   mnistCont [i]=new int [28];
	   for (int j=0;j<28;j++)
		{	
 		buf=fgetc(fp);
		num = atoi(&buf);
 	        buf=fgetc(fp);
		while (buf != ',')
		{
		num_1=atoi(&buf);
 		num= num*10+num_1;
		buf=fgetc(fp);
			}	
		mnistCont [i][j]=num;
	        num=0 ,num_1=0;}}

return mnistCont;    
fclose(fp);	

    
}
#endif

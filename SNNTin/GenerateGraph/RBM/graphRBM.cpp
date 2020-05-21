#include <vector>
#include <algorithm>
#include <stdio.h>

#define MuxNperLayer 1000

int main()
{
  //define layers of network
int neuronPerLayer [] = {900, 80 , 20 };
int sizeLayer= sizeof(neuronPerLayer)/sizeof(neuronPerLayer [0]);
//printf ("size = %d\n",sizeLayer);

//assign the neuron to the layers
int** neuron = new int* [sizeLayer];
int v=0;
for (int i=0; i< sizeLayer; i++){
	neuron [i]= new int [MuxNperLayer];
	for (int j=0; j< neuronPerLayer [i];j++){
		neuron [i][j]=v;
		v++;
		//printf ("n%d%d,%d\n",i,j,neuron [i][j]);
			}}

//assign the connection to the neurons between each two layers
int numSrc = neuronPerLayer [0]+neuronPerLayer [1];
int numDis = neuronPerLayer [1]+neuronPerLayer [2];
int** src = new int* [numSrc];
int** dis = new int* [numDis];
for (int i=0; i< sizeLayer-1; i++)
		{
	src[i] = new int [neuronPerLayer [i]];
	dis[i+1] = new int [neuronPerLayer [i+1]];
	for (int j=0; j< neuronPerLayer [i];j++)
		src[i][j]= neuron [i][j];
				
	for (int j=0;j<neuronPerLayer [i+1];j++)
		dis[i+1][j]= neuron [i+1][j];
					
	}
//print each source next to its distination
for (int i=0;i<sizeLayer-1;i++)
	 for (int j=0;j<neuronPerLayer [i];j++)
		for (int k=0;k< neuronPerLayer[i+1];k++)
 			 printf ("%d  %d\n",src[i][j],dis[i+1][k]);

return 0;
}


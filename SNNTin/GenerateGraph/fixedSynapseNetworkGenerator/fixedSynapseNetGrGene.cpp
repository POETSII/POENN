
#include <vector>
#include <algorithm>
#include <stdio.h>

int main()
{
int numNeurons=0, synapesPerNeuron, xGem, yGem;

puts ("enter the number of neurons:\n");
scanf("%d",&numNeurons);
printf ("the number of neurons: %d\n", numNeurons);

puts ("enter the number of synapses perneuron:\n");
scanf("%d",&synapesPerNeuron);
printf ("the number of synapses per neuron: %d\n", synapesPerNeuron);
g1:
puts ("enter the Geometry of network xGem*yGem:\n");
scanf("%d%d",&xGem,&yGem);
if (xGem*yGem >= numNeurons)
printf ("the geometry of network is: %d X %d\n",  xGem, yGem);
else {
printf ("xGem*yGem should be bigger than number of neurons\n");
goto g1;}

int numSynapses = 0;

// Create 2D array for geometric Neuron
int** Neuron = new int* [yGem];
  for (int y = 0; y < yGem; y++)
    Neuron[y] = new int [xGem];

// Initialise Neuron
  for (int y = 0; y < yGem; y++)
    for (int x = 0; x < xGem; x++)
      Neuron[y][x] = -1;

 // Randomly insert Neurons into Space
  for (int v = 0; v < numNeurons; ) {
    int x = rand() % xGem;
    int y = rand() % yGem;
    if (Neuron[y][x] < 0) {
      Neuron[y][x] = v;
      v++;
    }
  }

 // For each neuron, find a default neighbour
    int* def = new int [numNeurons];
  int last = -1;
  for (int y = 0; y < yGem; y++) {
    for (int x = 0; x < xGem; x++) {
      int v = Neuron[y][x];
      if (v >= 0) {
        if (last >= 0) {
          def[v] = last;
          def[last] = v;
        }
        last = v;
      }
    }
  }
FILE *output_file;
output_file=fopen("graphFixedSynapse.txt", "w");
 // Some neighbour connections
  for (int y = 0; y < yGem; y++) {
    for (int x = 0; x < xGem; x++) {
      int src = Neuron[y][x];
      if (src >= 0) {
        for (int i = 0; i <synapesPerNeuron ; i++) {
          int dst = Neuron[y][x]+(i+1) ;
		if (dst < numNeurons){
            		fprintf(output_file, "%d %d\n", src, dst); numSynapses++;}
		if (dst >= numNeurons){
			fprintf(output_file,"%d %d\n", src,i); numSynapses++;}			
           
		 
            
          
        }
      }
    }
  }
fclose(output_file);
printf("number of synapses in network: %d \n", numSynapses);
return 0;}

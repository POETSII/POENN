# POENN
A repository for SNN and ANN application on POETS
## Single neuron spiking activity
To see the responses of each single neuron to the stimulated input and has proper spiking pattern
the behaviour of one single spiking neuron could be reported in certain timestep window.
![img](https://github.com/POETSII/POENN/blob/master/SNNTin/SnnGraphs/Spike_singleN_RNN_rand.png)
## Raster plot to observe spiking sctivity of population of neurons.
Raster gragh shows the spiking activity of a population of spiking Neurons.
![img](https://github.com/POETSII/POENN/blob/master/SNNTin/SnnGraphs/Output_raster.png)

## Neural Network topology
So far POENN support two types of networks topology namely: Randomly RRN-like connections and 
Fully connected FFNN restricted boltzmann machine (RBM). 
The RBM topology could be run in SNNTin/GenerateGraph/RBM. The number of neural network layer including
the number of neurons in each layer could be modified in this line of code in graphRBM.cpp:
```c++
neuronPerLayer [] = {900, 80 , 20 }.
```
## MNIST Data-set
To be able to test and validate our network accuracy we use MNIST data-set consists of 60000 hand-written digits 
for training and 10000 digits for testing the neural network. We have transfered the data to CSV file for ease of 
possible uses. One digit 28*28 pixel of MNIST digits is shown below that could be reproduced with running mnist_imp.py.
![img](https://github.com/POETSII/POENN/blob/master/Data/Figure_1.png)




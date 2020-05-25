from mnist import MNIST
import numpy as np
import matplotlib.pyplot as plt


mndata = MNIST('./sampels')
images, labels = mndata.load_training()
imagesTest, labelsTest = mndata.load_testing()
print(images [2])
#print('labels: %s' % np.unique(labels))
#print('Class distribution: %s' % np.bincount(labels))

#Transfer mnist to csv files:
''' 
np.savetxt(fname='/home/mahyar/OneDrive/NN-Dev/poets/POENN/Data/sampels/mnist_csv/images_train.csv', 
           X=images, delimiter=',', fmt='%d')

np.savetxt(fname='/home/mahyar/OneDrive/NN-Dev/poets/POENN/Data/sampels/mnist_csv/label_train.csv', 
           X=labels, delimiter=',', fmt='%d')
np.savetxt(fname='/home/mahyar/OneDrive/NN-Dev/poets/POENN/Data/sampels/mnist_csv/images_test.csv', 
           X=imagesTest, delimiter=',', fmt='%d')

np.savetxt(fname='/home/mahyar/OneDrive/NN-Dev/poets/POENN/Data/sampels/mnist_csv/labels_test.csv', 
           X=labelsTest, delimiter=',', fmt='%d')
'''

import gzip
f = gzip.open('./sampels/train-images-idx3-ubyte.gz','r')

image_size = 28
num_images = 5
f.read(16)
buf = f.read(image_size * image_size * num_images)
data = np.frombuffer(buf, dtype=np.uint8).astype(np.float32)
data = data.reshape(num_images, image_size, image_size, 1)

image = np.asarray(data[2]).squeeze()
plt.imshow(image)
plt.show()

'''
# pick a sample to plot
sample = 1
image = images[sample]
# plot the sample
fig = plt.figure
plt.imshow(image, cmap='gray')
plt.show()
'''


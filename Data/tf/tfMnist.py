from keras.datasets import mnist
from keras import models
from keras import layers
from keras.models import Sequential
from keras.layers import Activation, Dense
(train_images, train_labels), (test_images, test_labels) = mnist.load_data()
print ('train image shape:',train_images.shape)

network = models.Sequential()
network.add(layers.Dense(512, activation='relu', input_shape=(28 * 28,)))
network.add(layers.Dense(10, activation='softmax'))

network.compile(optimizer='rmsprop',
loss='categorical_crossentropy',
metrics=['accuracy'])

#Preparing the image data
train_images = train_images.reshape((60000, 28 * 28))
train_images = train_images.astype('float32') / 255
test_images = test_images.reshape((10000, 28 * 28))
test_images = test_images.astype('float32') / 255

#Preparing the labels
from keras.utils import to_categorical
train_labels = to_categorical(train_labels)
test_labels = to_categorical(test_labels)

#We’re now ready to train the network, which in Keras is done via a call to the network’s fit method—we fit the model to its training data:

network.fit(train_images, train_labels, epochs=5, batch_size=128)

#Test and validation:

test_loss, test_acc = network.evaluate(test_images, test_labels)
print('test_acc:', test_acc)


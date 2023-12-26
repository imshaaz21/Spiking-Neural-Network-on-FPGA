# import libraries
import numpy as np


# network structure, weights, biases and activation of output neurons of existing ANN
def load_model():
    network_structure = [3, 7, 2]               # input layer, hidden layer, output layer
    weights = np.array([[-0.0053, 0.045, 0.465],    # every line is one neuron (no neurons for input layer)
                        [-0.333, -0.34, -0.594],
                        [-0.513, -0.834, -0.942],
                        [0.3781, 0.2122, -0.3592],
                        [0.051, 0.337, -0.2775],
                        [0.21, -0.0594, 0.275],
                        [0.566, 0.811, 0.76],
                        [0.1985, -1.0391, 0.0594, 0.0093, 0.281, -0.474, 1.4804],
                        [-0.4135, 0.03925, -1.9792, 0.38283, -0.276, 0.07493, -1.6213]], dtype=object)
    biases = np.array([-0.3567, 0.123, 0.9493, -0.194, -0.192, -0.351, -0.9776, -0.321, 0.84])
    classification_threshold = 0.5              # output activation needed to assign to class

    return network_structure, weights, biases, classification_threshold

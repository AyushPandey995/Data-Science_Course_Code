'''The perceptron is the basic building block of a neural network. It's a simple computational model that takes several inputs, applies weights to them, adds a bias, and produces an output. It's essentially a decision-making unit.
'''

#step Function
def step(x):
    return 1 if x >= 0 else 0

def perceptron(x1, x2, w1, w2, b):
    y = x1*w1 + x2*w2 + b
    return step(y)

print(perceptron(0, 0, 1, 1, -1.5))
print(perceptron(0, 1, 1, 1, -1.5))
print(perceptron(1, 0, 1, 1, -1.5))
print(perceptron(1, 1, 1, 1, -1.5))
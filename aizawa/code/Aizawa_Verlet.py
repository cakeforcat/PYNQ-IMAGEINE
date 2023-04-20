import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# parameters for Aizawa attraction
a = 0.95
b = 0.7
c = 0.6
d = 3.5
e = 0.25
f = 0.1

# sim parameters
dt = 0.01
num_steps = 3 * 50000

# initialize arrays to store trajectory
x = np.zeros(num_steps)
y = np.zeros(num_steps)
z = np.zeros(num_steps)

# initial conditions
x[0] = 1
y[0] = 1
z[0] = 1

# define Aizawa attractor
def aizawa_attractor(x, y, z):
    x_dot = (z - b) * x - d * y
    y_dot = d * x + (z - b) * y
    z_dot = c + a * z - (z ** 3) / 3 - (x ** 2 + y ** 2) * (1 + e * z) + f * z * (x ** 3)

    return x_dot, y_dot, z_dot

# Velocity Verlet integration
for i in range(1, num_steps):
    
    x_dot, y_dot, z_dot = aizawa_attractor(x[i-1], y[i-1], z[i-1])
    x[i] = x[i-1] + x_dot * dt + 0.5 * x_dot * dt**2
    y[i] = y[i-1] + y_dot * dt + 0.5 * y_dot * dt**2
    z[i] = z[i-1] + z_dot * dt + 0.5 * z_dot * dt**2

# plot trajectory
fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')
ax.plot(x[0:num_steps//3], y[0:num_steps//3], z[0:num_steps//3], linewidth=0.5, color='g')
ax.plot(x[num_steps//3:num_steps//3*2], y[num_steps//3:num_steps//3*2], z[num_steps//3:num_steps//3*2], linewidth=1, color='r')
ax.plot(x[num_steps//3*2:num_steps], y[num_steps//3*2:num_steps], z[num_steps//3*2:num_steps], linewidth=0.5, color='b')
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Aizawa Attractor in 3D using Velocity Verlet')
plt.show()

print("Initial conditions: x={}, y={}, z={}".format(x[0], y[0], z[0]))
print("Final conditions: x={}, y={}, z={}".format(x[-1], y[-1], z[-1]))

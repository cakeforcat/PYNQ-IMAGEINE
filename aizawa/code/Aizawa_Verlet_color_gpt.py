import numpy as np
import matplotlib.pyplot as plt
from matplotlib.colors import LinearSegmentedColormap

# Parameters for Aizawa attractor
a = 0.95
b = 0.7
c = 0.6
d = 3.5
e = 0.25
f = 0.1

# Simulation parameters
dt = 0.01
num_steps = 2 * 50000

# Initialize arrays to store trajectory
x = np.zeros(num_steps)
y = np.zeros(num_steps)
z = np.zeros(num_steps)

# Initial conditions
x[0] = 1
y[0] = 1
z[0] = 1

# Define Aizawa attractor
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

# Normalize time steps for colormap
t = np.linspace(0, 1, num_steps)

# Define color map with seamless transition
color_start = 'green'
color_middle = 'red'
color_end = 'blue'
cmap = LinearSegmentedColormap.from_list('my_cmap', [(0, color_start), (0.5, color_middle), (1, color_end)])

# Convert t values to RGBA tuples
colors = cmap(t)
rgba_colors = np.zeros((num_steps, 4))
rgba_colors[:, :3] = colors[:, :3]
rgba_colors[:, 3] = colors[:, 3] * 0.8  # adjust alpha for better visibility

# Plot trajectory with color
fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')
ax.plot(x, y, z, lw=0.5, color=rgba_colors)
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Aizawa Attractor with Color Transition')
plt.show()

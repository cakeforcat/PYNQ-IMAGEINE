import numpy as np
import matplotlib.pyplot as plt

#parameters for Aizawa attraction
a = 0.95
b = 0.7
c = 0.6
d = 3.5
e = 0.25
f = 0.1

#sim parameters
dt = 0.01
num_steps = 50000

#initialize arrays to store trajectory
x = np.zeros(num_steps)
y = np.zeros(num_steps)
z = np.zeros(num_steps)

#initial conditions
x[0] = 1
y[0] = 1
z[0] = 1

#define Aizawa attractor
def aizawa_attractor(x, y, z):
    x_dot = (z - b) * x - d * y
    y_dot = d * x + (z - b) * y
    z_dot = c + a * z - (z ** 3) / 3 - (x ** 2 + y ** 2) * (1 + e * z) + f * z * (x ** 3)
    return x_dot, y_dot, z_dot

#rk4 method
for i in range(1, num_steps):
    x_dot1, y_dot1, z_dot1 = aizawa_attractor(x[i-1], y[i-1], z[i-1])
    x_dot2, y_dot2, z_dot2 = aizawa_attractor(x[i-1] + 0.5 * dt * x_dot1, y[i-1] + 0.5 * dt * y_dot1, z[i-1] + 0.5 * dt * z_dot1)
    x_dot3, y_dot3, z_dot3 = aizawa_attractor(x[i-1] + 0.5 * dt * x_dot2, y[i-1] + 0.5 * dt * y_dot2, z[i-1] + 0.5 * dt * z_dot2)
    x_dot4, y_dot4, z_dot4 = aizawa_attractor(x[i-1] + dt * x_dot3, y[i-1] + dt * y_dot3, z[i-1] + dt * z_dot3)
    
    x[i] = x[i-1] + (dt / 6) * (x_dot1 + 2 * x_dot2 + 2 * x_dot3 + x_dot4)
    y[i] = y[i-1] + (dt / 6) * (y_dot1 + 2 * y_dot2 + 2 * y_dot3 + y_dot4)
    z[i] = z[i-1] + (dt / 6) * (z_dot1 + 2 * z_dot2 + 2 * z_dot3 + z_dot4)

# def rk4(x, y, z):
#     k1x, k1y, k1z = aizawa_attractor(x, y, z)
#     k2x, k2y, k2z = aizawa_attractor(x + 0.5*dt*k1x, y + 0.5*dt*k1y, z + 0.5*dt*k1z)
#     k3x, k3y, k3z = aizawa_attractor(x + 0.5*dt*k2x, y + 0.5*dt*k2y, z + 0.5*dt*k2z)
#     k4x, k4y, k4z = aizawa_attractor(x + dt*k3x, y + dt*k3y, z + dt*k3z)

#     x += dt * (k1x + 2*k2x + 2*k3x + k4x) / 6
#     y += dt * (k1y + 2*k2y + 2*k3y + k4y) / 6
#     z += dt * (k1z + 2*k2z + 2*k3z + k4z) / 6

#     return x, y, z    
#     x[i], y[i], z[i] = rk4(x, y, z)

# Plot the Aizawa attractor
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
ax.plot(x, y, z)
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Aizawa Attractor (RK4 Method)')
plt.show()
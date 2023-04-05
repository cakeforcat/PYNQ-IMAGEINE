# -*- coding: utf-8 -*-
"""
Created on Sun Mar 26 20:48:27 2023

@author: pokew
"""

from mpl_toolkits import mplot3d
import numpy as np
import matplotlib.pyplot as plt

def dx(x,y,z):
    result = 0.2*x +y*z
    return result

def dy(x,y,z):
    result = 0.01*x - 0.04*y - x*z
    return result

def dz(x,y,z):
    result = -z - x*y
    return result

iterations = 1000000

x=[]
x = [0 for i in range(iterations+1)]
y=[]
y = [0 for i in range(iterations+1)]
z=[]
z = [0 for i in range(iterations+1)]

x[0] = 1








y[0] = 1
z[0] = 1
h  = 0.01     #Step size

for i in range(1,iterations):
    k1 = dx(x[i-1],y[i-1],z[i-1])
    l1 = dy(x[i-1],y[i-1],z[i-1])
    m1 = dz(x[i-1],y[i-1],z[i-1])
    
    k2 = dx(x[i-1]+0.5*h*k1, y[i-1]+0.5*h*l1, z[i-1]+0.5*h*m1)
    l2 = dy(x[i-1]+0.5*h*k1, y[i-1]+0.5*h*l1, z[i-1]+0.5*h*m1)
    m2 = dz(x[i-1]+0.5*h*k1, y[i-1]+0.5*h*l1, z[i-1]+0.5*h*m1)
    
    k3 = dx(x[i-1]+0.5*h*k2, y[i-1]+0.5*h*l2, z[i-1]+0.5*h*m2)
    l3 = dy(x[i-1]+0.5*h*k2, y[i-1]+0.5*h*l2, z[i-1]+0.5*h*m2)
    m3 = dz(x[i-1]+0.5*h*k2, y[i-1]+0.5*h*l2, z[i-1]+0.5*h*m2)
    
    k4 = dx(x[i-1]+h*k3, y[i-1]+h*l3, z[i-1]+h*m3)
    l4 = dy(x[i-1]+h*k3, y[i-1]+h*l3, z[i-1]+h*m3)
    m4 = dz(x[i-1]+h*k3, y[i-1]+h*l3, z[i-1]+h*m3)
         
            
    x[i] = x[i-1]+(h/6)*(k1 + 2*k2 + 2*k3 + k4)
    y[i] = y[i-1]+(h/6)*(l1 + 2*l2 + 2*l3 + l4)
    z[i] = z[i-1]+(h/6)*(m1 + 2*m2 + 2*m3 + m4)
    
    break
    
fig = plt.figure()
ax = plt.axes(projection='3d')
ax.plot3D(x, y, z, 'purple')
ax.view_init(-140, 60)
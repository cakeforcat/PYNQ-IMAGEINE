x = 0.1
y = 1
z = 0.01

newX = x*2**24
if (newX < 0):
    newX = int(newX + 2**32)
print('X starting:', x, ' ', int(newX))

newY = y*2**24
if (newY < 0):
    newY = int(newY + 2**32)
print('Y starting:', y, ' ', int(newY))

newZ = z*2**24
if (newZ < 0):
    newZ = int(newZ + 2**32)
print('Z starting:', z, ' ', int(newZ))









# steps = 1000
# iterationNew = int(iterations/steps)
# plotX=[]
# plotX = [0 for i in range(iterationNew)]
# plotY=[]
# plotY = [0 for i in range(iterationNew)]
# plotZ=[]
# plotZ = [0 for i in range(iterationNew)]
# fig = plt.figure()
# ax = plt.axes(projection='3d')
# for j in range(0,steps):
#     color = plt.cm.summer(j/steps)
#     for i in range(0,iterationNew):
#         plotX[i] = x[j*iterationNew + i]
#         plotY[i] = y[j*iterationNew + i]
#         plotZ[i] = z[j*iterationNew + i]
#     ax.plot3D(plotX, plotY, plotZ, color=color)
# ax.view_init(40, 45)
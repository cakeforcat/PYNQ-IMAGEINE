iterations = 3000000;
xsoft = zeros(1,iterations+1);
xsoft(1) = 1;
ysoft = zeros(1,iterations+1);
ysoft(1) = 1;
zsoft = zeros(1,iterations+1);
zsoft(1) = 1;
step = 0.005;

for i = 1:iterations
    k1soft(i) = dx(xsoft(i),ysoft(i),zsoft(i));
    l1soft(i) = dy(xsoft(i),ysoft(i),zsoft(i));
    m1soft(i) = dz(xsoft(i),ysoft(i),zsoft(i));
    
    k2soft(i) = dx(k1soft(i)*step+xsoft(i),l1soft(i)*step+ysoft(i),m1soft(i)*step+zsoft(i));
    l2soft(i) = dy(k1soft(i)*step+xsoft(i),l1soft(i)*step+ysoft(i),m1soft(i)*step+zsoft(i));
    m2soft(i) = dz(k1soft(i)*step+xsoft(i),l1soft(i)*step+ysoft(i),m1soft(i)*step+zsoft(i));

    xsoft(i+1) = (k1soft(i) + k2soft(i))*step + xsoft(i);
    ysoft(i+1) = (l1soft(i) + l2soft(i))*step + ysoft(i);
    zsoft(i+1) = (m1soft(i) + m2soft(i))*step + zsoft(i);
end


plot3(xsoft,ysoft,zsoft);
xlabel('x');
ylabel('y');
zlabel('z');


function result = dx(x,y,z)
    result = 0.2*x + y*z;
end

function result = dy(x,y,z)
    result = 0.01*x-0.04*y - x*z;
end

function result = dz(x,y,z)
    result = -x*y - z;
end

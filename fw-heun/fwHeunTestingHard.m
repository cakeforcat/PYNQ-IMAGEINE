iterations = 3000000;
xhard = zeros(1,iterations+1);
xhard(1) = 1;
yhard = zeros(1,iterations+1);
yhard(1) = 1;
zhard = zeros(1,iterations+1);
zhard(1) = 1;
step = 0.005;

for i = 1:iterations
    [xhard(i+1), yhard(i+1), zhard(i+1)] = fwHeun(xhard(i), yhard(i), zhard(i));
end


plot3(xhard,yhard,zhard);
xlabel('x');
ylabel('y');
zlabel('z');
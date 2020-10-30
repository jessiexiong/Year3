N = 1000000;
x=[1 2 3 4 5 6];
xarray = randi(6, [3, N])
x1 = xarray(1,:);
x2 = xarray(2,:);
x3 = xarray(3,:);
y = sum(xarray, 1)

 yval=unique(y)
 H = histc(y, yval);
 
stem(yval,H)
title('Count of Sum Rolled')
% axis([1 6 0 100])
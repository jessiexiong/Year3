N = 100;
x=[1 2 3 4 5 6];
xarray = randi(6, [3, N]);
x1 = xarray(1,:);
x2 = xarray(2,:);
x3 = xarray(3,:);
y = sum(xarray, 1);

    H1 = histc(x1, unique(x1))/N;
    H2 = histc(x2, unique(x2))/N;
    H3 = histc(x3, unique(x3))/N;
    
%first plot
% subplot(2,2,1)
% stem(x,p_x);
% grid;
% xlabel('Values of x');
% ylabel('Probability of x'); 
% title('PMF of x');
% axis([0 7 0 1])

plot(x,H1, 'Color',[0 0 1])
title('Combine Plots')
axis([1 6 0 1])

hold on

plot(x,H2, 'Color',[1 0 0])

plot(x,H3, 'Color',[0 1 1]) 

hold off
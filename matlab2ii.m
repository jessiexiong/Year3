%matlab2ii
%Number of trials
N = 1000000;
bins = [0:100];
F = load('RV1.mat');
M = load('RV2.mat');
L = load('RV3.mat');


%Code from Part 1 finding mean and variance of each RV 
%call function average to calculate mean of RV1
RV1mean = average(F.RV1);
%call function variance to calculate variance of RV1
RV1var = variance(RV1mean, F.RV1)
%checking with matlab

RV2mean = average(M.RV2);
RV2var = variance(RV2mean, M.RV2)

RV3mean = average(L.RV3);
RV3var = variance(RV3mean, L.RV3)


%Part 2%

%Finding probability of every value in RV1
count1 = histc(F.RV1, bins);
H1 = count1/N;

%Plot RV1
subplot(2,2,1)
stem (bins, H1);
title ('Distribution RV1');
xlim = ([0 100]);
%RV1 normal distribution
x = linspace(0, 100, 20000);
fx1 = exp(-1.0 .* (x - RV1mean).* (x - RV1mean)/(2 .* (RV1var)))/(sqrt (2.*pi.*(RV1var)));
plot(x,fx1)

%Repeat for RV2 and RV3
count2 = histc(M.RV2, bins);
H2 = count2/N;


subplot(2,2,2)
stem (bins, H2);
title ('Distribution RV2');
xlim = ([0 100]);

%RV3 things
count3 = histc(L.RV3, bins);
H3 = count3/N;

subplot(2,2,3)
stem (bins, H3);
title ('Distribution RV3');
xlim = ([0 100]);

function mean = average(x)
    mean = sum(x(:))/numel(x);
end

function var = variance(mean, array)
    var=0;
    for i=1:length(array)
        var=var+(array(i)-mean)^2;
    end
    var=var/length(array);
end



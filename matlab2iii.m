N = 1000000;
bins = [0:100];
tot1 = 0;
tot2 = 0;
tot3 = 0;

RV1 = load('RV1.mat').RV1;
RV2 = load('RV2.mat').RV2;
RV3 = load('RV3.mat').RV3;

count1 = histc(RV1, bins);
H1 = count1/N;
count2 = histc(RV2, bins);
H2 = count2/N;
%Repeat for RV2 and RV3
count3 = histc(RV3, bins);
H3 = count3/N;


for i=10:40
    tot1 = H1(i)+tot1
    tot2 = H2(i)+tot2
    tot3 = H3(i)+tot3
end


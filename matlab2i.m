F = load('RV1.mat');
M = load('RV2.mat');
L = load('RV3.mat');

% disp(S.RV1); % print all
% disp(S.RV1(1)); % print index 1 etc 

%call function average to calculate mean of RV1
RV1mean = average(F.RV1);
%call function variance to calculate variance of RV1
RV1var = variance(RV1mean, F.RV1)
%checking with matlab

RV2mean = average(M.RV2);
RV2var = variance(RV2mean, M.RV2)

RV3mean = average(L.RV3);
RV3var = variance(RV3mean, L.RV3)


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




    
    


%matlab1ii

x=[1,2,3,4,5,6];
%create an array of 6 elements with a probability of 1/6
p_x=zeros(1,length(x));
p_x(1)=(1/length(x));
for i=2:length(x)
  p_x(i)=p_x(i-1)+(1/length(x))
end

%create array of values from 3 to 18
y=[3:18];
yarray = 0;
c=0;

%iterate through all possible combinations
for i=1:length(x)
    for j=1:length(x)
        for k=1:length(x)
            roll_sum=x(i)+x(j)+x(k);
            yarray=[yarray roll_sum];
        end
    end
end
%delete first index
yarray(1)=[];
%sort values of yarray
yarray=sort(yarray);

%create for loop to count number of times each number occurs
for m=3:18
    new = numel(find(yarray==m));
    c = [c new];
end
c=c(c>0);

%calculate probability of y, store into array p_y
p_y=zeros(1,length(x));
p_y(1)=c(1)/length(yarray);
for n=2:length(c)
     p_y(n)=p_y(n-1)+c(n-1)/length(yarray);
end

title('this is the title')
n=-10:10;
a=0*n;
a(n>=0)=1;
stem(p_x)
xlabel('this is the x label')
ylabel('this is the y label')

%first plot
subplot(2,2,1)
stem(x,p_x);
grid;
xlabel('Values of x');
ylabel('Probability of x'); 
title('PMF of x');
axis([0 6 0 1])

%second plot
subplot(2,2,2)
stem(y,p_y, 'Color',[1 .6 .7]);
grid;
xlabel('Values of y');
ylabel('Probability of y'); 
title('PMF of y');
axis([yarray(1)-1 yarray(end) 0 1])
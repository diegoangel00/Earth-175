% make 10x2 array of ones
%x = ones(2,10);                                        
x = ones(10,2);
% do calculation on first five values in column 1
for i = 1:5
    x(i,1) = sqrt(i);
end

% make vector of mean and standard deviation
y = [0 0];
y(1) = mean(x(:));                                      
y(2) = std(x(:));              

A = 'station_01';

a = 'event_1';
            
ifa = strcmp(A,a);

c = [4 5 6; 3 2 0; 1 7 9];

%end
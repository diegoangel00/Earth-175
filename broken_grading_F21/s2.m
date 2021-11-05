% 


disp([m01 ,' values of m are between 0.0 and 0.1']);
disp([m02 ,' values of m are between 0.1 and 0.2']);
disp([m03 ,' values of m are between 0.2 and 0.3']);
disp([m04 ,' values of m are between 0.3 and 0.4']);
disp([m05 ,' values of m are between 0.4 and 0.5']);
disp([m06 ,' values of m are between 0.5 and 0.6']);
disp([m07 ,' values of m are between 0.6 and 0.7']);
disp([m08 ,' values of m are between 0.7 and 0.8']);
disp([m09 ,' values of m are between 0.8 and 0.9']);
disp([m10 ,' values of m are between 0.9 and 1.0']);


% part 3
disp(' >> Part iii)')
m = zeros(1000,1);
for i = 1:1000
    m(i) = mean(rand(20,1));
end
% now calculate bins of m
binlims = [0:0.1:1];
N_bins = length(binlims)-1;
N_in_bin = zeros(N_bins,1);
for k = 1:N_bins
    N_in_bin(k) = sum( (m > binlims(k)) & (m <= binlims(k+1)) );
    disp([num2str(N_in_bin(k)),' values within m are between ',num2str(binlims(k)),' and ',num2str(binlims(k+1))]);
end
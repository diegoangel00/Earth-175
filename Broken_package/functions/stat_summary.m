function [datmean,datmedian,datvar,datstd] = stat_summary(data)
% [datmean,datmedian,datvar,datstd] = stat_summary(data)
%
% INTPUTS:
%   data  - Nx1 vector of numerical data 
% 
% OUTPUTS:
%   datmean   - arithmetic mean of data values
%   datmedian - median of data values
%   datvar    - variance of data
%   datstd    - standard deviation of data, = sqrt(datvar)

% if fewer than one argument
nargin
if nargin < 1
    error('stat_summary needs one argument: a column vector of data');
end

% make sure data is a column
if min(size(data)) ~= 1
    error('data needs to be a vector, not a matrix');
end

%if data in row, take the transpose and make it a column
if isrow(data)
    data = data''; 
end
    
% compute some statistical information about data (should be single values)
datmean = mean(data,1);
datmedian = median(data,1);
datvar = var(data,1);
datstd = std(data,1);

end

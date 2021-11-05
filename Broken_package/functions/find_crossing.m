function [ X_ind ] = find_crossing(y,a)
% [ X_ind ] = find_crossing( y,a )
%   simple function to return the index of crossing (X) point, where the
%   data vector, y, is closest to (but not necessarily equal to) the "water
%   level" value a.
%   
%   If second argument is not given, the function outputs the index of the
%   point in y closest to 0 (i.e., a=0, by default).
% 
%   If multiple points in y are equidistant from a, then the index of the
%   first point is returned. 


if nargin < 2 || isempty(a)
    a = 0;
end

X_ind = find( abs(y-a) == min(abs(y-a)) );

if length(X_ind) > 1
    X_ind = X_ind(1);
end


end
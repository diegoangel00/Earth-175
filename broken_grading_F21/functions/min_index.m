function ind = min_index(x)
%  ind = min_index(x)
%   Returens index of the value in x that is the minimum of x
%   Just does find(x == min(x)) but in one line
ind = find(x == min(x));
end


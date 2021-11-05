function ostr = padstring(istr,nchars,padside)
% ostr = padstring(istr,nchars,padside)
%   Function to pad out a string with leading spaces if less than "nchars"
%   characters long. padside dictates whether you pad from the 'left'
%   (default) or pad from the 'right' (must be one of those two strings) 

if nargin < 2 || isempty(nchars)
    nchars = 2;
end
if nargin < 3 || isempty(padside)
    padside = 'left'; % default is leading whitespace
end

ostr = istr;
while length(ostr) < nchars
    if strcmp(padside,'left')
        ostr = [' ',ostr]; %#ok<*AGROW>
    elseif strcmp(padside,'right')
        ostr = [ostr,' '];
    end
end


end


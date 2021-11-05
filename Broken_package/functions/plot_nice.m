function [hfig,hax] = plot_nice(X,Y,varargin)
% [hfig,hax] = plot_nice(X,Y,varargin)
%
% INTPUTS:
%   x    -  [N,1] vector of variable on abscissa (x-axis!) 
%   y    -  [N,1] vector of variable on ordinate (y-axis!)
%   varargin - various arguments in, in pairs of {argtype,argval} from
%              among the following options:
%            - hfig = handle to figure in which data is plotted
%            - hax  = handle to axes in which data is plotted
%            - fontsize = size of font for axes labels
%            - axlwidth = width of axis lines
%            - linewidthe = width of the data lines
%            - linestyle = style of the plot
%            - title = title string
%            - xlabel = xlabel string
%            - ylabel = ylabel string
% 
% OUTPUTS:
%   hfig  - handle to figure in which data is plotted
%   hax   - median of axis in which data is plotted

%% defaults - will be overwritten by varargin values if avail
hfig = [];
hax = [];
axlwidth = 1.5;
fontsize = 16;
xstr = 'x';
ystr = 'y';
titstr = '';
lsty = 'o';
lwidth = 1.5;

%% use varargin to customise plot
for iv = 1:(nargin-2)/2
    argtype = varargin{2*iv-1};
    argval  = varargin{2*iv};
    
    switch argtype
        case {'fontsize','fs'}
            fontsize = argval;
        case {'axlwidth','alw'}
            axlwidth = argval;
        case {'linewidth','lw'}
            lwidth = argval;
        case {'title','tstr'}
            titstr = argval;
        case {'xlabel','xstr'}
            xstr = argval;
        case {'ylabel','ystr'}
            ystr = argval;
        case {'linestyle','lsty'}
            lsty = argval;            
    end
end
           

% if no figure handle given
if isempty(hfig) 
    hfig = figure(1);
    set(hfig,'pos',[912 877 648 461]);
end
% if no figure handle given
if isempty(hax)
    hax = gca;
end

% if only one variable given... assume it is Y, set X as [1:length(Y)]
if nargin < 2
    Y = X; 
    X = 1:length(Y);
end

% PLOT the data!
plot(hax,X,Y,lsty,'linewidth',lwidth)

% vectors of data bounds
ymima = [min(Y) max(Y)];
xmima = [min(X) max(X)];

% pretty plot
set(hax,'ylim',[ymima(1)-diff(ymima)/10  ymima(2)+diff(ymima)/10],...
        'xlim',[xmima(1)-diff(xmima)/20  xmima(2)+diff(xmima)/20],...
        'fontsize',fontsize,'linewidth',axlwidth,'box','on','layer','top')
    
% pretty axis labels and title
xlabel(hax,xstr, 'fontsize',1.2*fontsize,'fontweight','bold');
ylabel(hax,ystr, 'fontsize',1.2*fontsize,'fontweight','bold');
title(hax,titstr,'fontsize',1.4*fontsize,'fontweight','bold');

end


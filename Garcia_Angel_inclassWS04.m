%% Template for worksheet set answers

%% Answers to in-class worksheet ##
Name = 'Angel_Garcia'; % << your name here...
WS = 4;              % << number of problem set or work sheet...

%% THE LINES BELOW ARE TO HELP ME GRADE
%  PLEASE COPY AND PASTE THIS (WITH ALL THE "%" SIGNS) 
%  INTO YOUR SCRIPT BELOW YOUR NAME!
%  save('wsid','Name','WS');
%  clear; close all; clc;
%  load('wsid.mat'); delete('wsid.mat')
%  unqdir = sprintf('%s_ws%02.0f',Name,WS);
%  mkdir(unqdir)
%  cd(unqdir)
%% LAST LINE YOU SHOULD COPY... BELOW HERE IS ALL YOU :)


%% Citations and collaborations
% On this worksheet set I collaborated with the following students:

% And I used the following websites:
%   http://www.matlabtips.com
%   Matlab Help Documentation
%% Question A
clearvars;
clear variables;
disp('==================================================')
disp(' >>>> Question A')


% part i
disp(' >> Part i')
for k = 10:20
    disp(k^2)
end

% part ii
disp(' >> Part ii')
i = 0;
while i <= 10 
    disp(i)
    i = i + 1;
end

% part iii
disp(' >> Part iii')
we = ('we DO need no education');
for x = 1:30
    disp(we)
end

% part iv
disp(' >> Part iv')
% part 1
format LONGG;
v = logspace(1,6,6);
for j = 1:length(v)
    disp(v(j))
end

% part v
disp(' >> Part v')
f = zeros(9,1);
for h = 1:9
    f(h,1) = (h + 1)^2;
end
disp(f)

% part vi
disp(' >> Part vi')
M = magic(3);
c = 1;
e = [];
for icol = 1:3
    for irow = 1:3
        e(c) = M(irow,icol);
        c = c + 1;
    end
end
disp('Vector E')
disp(e)
disp('Matrix M')
disp(M)
%% Question B
disp('==================================================')
disp(' >>>> Question B')
% part i
disp(' >> Part ii')
g = [];
for ef = 1:length(e)
    g(ef) = e(ef)*f(ef);
end


% part ii
disp(' >> Part ii')
P = f*e;
disp('Matrix P')
disp(P)
Q = zeros(length(e));
for outer = 1:length(e)
    for inner = 1:length(f)
        Q(inner,outer) = f(inner)*e(outer);
    end
end
disp('Matrix Q')
disp(Q)

%% Question C
disp('==================================================')
disp(' >>>> Question C')
rng(10)

% part i
disp(' >> Part i')
x = 0;
while (x+cos(pi*x^2) ~= 24)
    x = x + 1;
end
disp(x)

% part ii
disp(' >> Part ii')
%highest possible value for y can only be 19
for y = 1:19 
    if (y + sin(y*pi/2) == 18)
        disp(y)
        break;
    end
end 

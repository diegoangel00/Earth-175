%% Template for worksheet set answers

%% Answers to in-class worksheet ##
Name = 'Angel_Garcia'; % << your name here...
WS = 2;              % << number of problem set or work sheet...

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
clear all;
disp('==================================================')
disp(' >>>> Question A')

% part 1
disp(' >> Part 1')
a = [1 4 8 -3];
disp(a)

% part 2
b = a';
disp(b)

% part 3
disp(' >> Part 3')
C = [a;4 16 -44 0.5];
disp(C)

% part 4
disp(' >> Part 4')
M = [6 1 8; 2 9 4; 7 5 3];
disp(M)

% part 5
disp(' >> Part 5')
Z = zeros(3);
disp(Z)

% part 6
disp(' >> Part 6')
c = (5:14);
disp(c)

% part 7
disp(' >> Part 7')
d = (19:-2:1);
disp(d)

% part 8
disp(' >> Part 8')
e = (4:0.25:5)';
disp(e)

% part 9
disp(' >> Part 9')
format LONGG
f = 10.^(-1:3);
disp(f)

% part 10
disp(' >> Part 10')
A = [M Z Z;M ones(3) Z];
disp(A)
%% Question B
disp('==================================================')
disp(' >>>> Question B')
% part 1
disp(' >> Part 1')
abprod = a*b;
disp(abprod)

% part 2
disp(' >> Part 2')
Catprod = C*a';
disp(Catprod)

% part 3
disp(' >> Part 3')
Minv = inv(M);
disp(Minv)

% part 4
disp(' >> Part 4')
M/M; % '/' = M* inv(M)
disp(M/M)

% part 5
disp(' >> Part 5')
colsumM = sum(M);
%I know this only works for a n*n matrix
rowsumM = sum(M'); %turned the column values into the row values 
disp(colsumM)
disp(rowsumM)

% part 6
disp(' >> Part 6')
[row_A,col_A] = size(A);
MA_Nc = row_A*length(c);
disp(MA_Nc)

%% Question C
disp('==================================================')
disp(' >>>> Question C')
% part 1
disp(' >> Part 1')
c5 = c(5);
disp(c5)

% part 2
disp(' >> Part 2')
D = [C(1:2);C(3:4)];
disp(D)

% part 3
disp(' >> Part 3')
g = d(3:end);
disp(g)

% part 4
disp(' >> Part 4')
h = d(end-1);
disp(h)

% part 5
disp(' >> Part 5')
k = [c(2),c(4),c(7)];
disp(k)

% part 6
disp(' >> Part 6')
L = [C(:,2),C(:,4),C(:,1)];
disp(L)

% part 7
disp(' >> Part 7')
Z1 = zeros(5,4);
Z1(1,3) = 5;
Z1(3,:) = [-3 -2 -1 0];
Z1(5,:) = Z1(3,:).^2;
Z1(:,4) = e;
disp(Z1)

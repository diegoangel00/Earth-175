%% Template for problem set answers

%% Answers to Problem set ##
Name = 'Angel_Garcia'; % << your name here...
PS = 2;              % << number of problem set or work sheet...

%% THE LINES BELOW ARE TO HELP ME GRADE
%  PLEASE COPY AND PASTE THIS (WITH ALL THE "%" SIGNS) 
%  INTO YOUR SCRIPT BELOW YOUR NAME!
%  save('psid','Name','PS');
%  clear; close all; clc;
%  load('psid.mat'); delete('psid.mat')
%  unqdir = sprintf('%s_ps%02.0f',Name,PS);
%  mkdir(unqdir)
%  cd(unqdir)
%% LAST LINE YOU SHOULD COPY... BELOW HERE IS ALL YOU :)

%% Question A
clear all;
disp('==================================================')
disp(' >>>> Question A')

% part 1
disp(' >> Part 1')
a = [1 2 5 9];
b = [7 -2 1 0];
disp(a)
disp(b)

% part i
disp(' >> Part i')
atbt = a'+b';
disp(atbt)

% part ii
disp(' >> Part ii')
ab = a*b';
disp(ab)

% part iii
disp(' >> Part iii')
a_b = a.*b;
disp(a_b)

% part iv
disp(' >> Part iv')
c = a.^2;
disp(c)

% part v
disp(' >> Part v')
meanb = mean(b);
disp(meanb)

% part vi
disp(' >> Part vi')
a(end -1) = a(4)*b(2);
A6 = a(end -1);
disp(A6)

%% Question B
disp('==================================================')
disp(' >>>> Question B')

A = [1 2; -1 5];
B = [3 -2 1; 0 0 1; 0 -5 2];
disp(A)
disp(B)

% part i
disp(' >> Part i')
AA = 2*A+A';
disp(AA)

% part ii
disp(' >> Part ii')
A2 = A^2;
disp(A2)

% part iii
disp(' >> Part iii')
A_A = A.*A;
disp(A_A)

% part iv
disp(' >> Part iv')
Binv = inv(B);
disp(Binv)

% part v
disp(' >> Part v')
L = (1/(A(1)*A(2,2)-A(1,2)*(A(2,1))))...
    *[A(2,2) -A(1,2);-A(2,1) A(1,1)];
disp(L)

% part vi
disp(' >> Part vi')
fprintf(' A*L matrix \n ')
disp(A*L)
fprintf(' L*A matrix \n')
disp(L*A)
disp(A')

% part vii
disp(' >> Part vii')
fprintf(' Since L*A and A*L = I then A and L must be inverses of each other  \n')

% part viii
disp(' >> Part viii')
C = [B(4:5)',B(7:8)'];
disp(C) 

% part ix
disp(' >> Part ix')
D = (A+C).*C;
disp(D)

%% Question C
disp('==================================================')
disp(' >>>> Question C')

% part i
disp(' >> Part i')
format BANK %2 decimals
x = linspace(-25,70,10);
disp(x)

% part ii
disp(' >> Part ii')
z = [1:0.25:14]';
disp(z)

% part iii
disp(' >> Part iii')
X = ones(3,5);
disp(X)

% part iv
format short % 4 decimal output
disp(' >> Part iv')
Y = diag(1:4);
disp(Y)

% part v
disp(' >> Part v')
y = 10.^[-3:2]';
disp(y)

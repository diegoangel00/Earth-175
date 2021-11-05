% part 1
disp(' >> Part 1')
for i = 1:1
    p = primes(100)
end

% part 2
disp(' >> Part 2')
P = [];
for i=1:5
    P(1,i) = p(i);
end
for i=1:5
    P(2,i) = p(i+5);
end
for i=1:5
    P(3,i) = p(i+10);
end
for i=1:5
    P(4,i) = p(i+15);
end
for i=1:5
    P(5,i) = p(i+20);
end
disp(P)
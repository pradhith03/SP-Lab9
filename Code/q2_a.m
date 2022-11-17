N = 2;
P = zeros(1,N);
f0 = 200;
fs = 10000;
td = 1;

A = zeros(1,N);

for v = 1:N
    A(v) = 1/v;
end

y = harmonics(A,f0,P,td,fs);
soundsc(y,fs);
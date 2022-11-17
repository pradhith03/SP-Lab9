N = 15; % tried for N = 15 along with other possible combinations of f0
P = zeros(1,N);
f0 = 200; % tried for f0 = 100,150,200 along with other possible combinations of N
fs = 10000;
td = 1;

a = zeros(1,N);

for v = 1:N
    a(v) = 1/(v^2);
end

y = harmonics(a,f0,P,td,fs);
soundsc(y,fs);
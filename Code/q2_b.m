N = 2;
P = zeros(1,N);
f0 = 200;
fs = 10000;
td = 1;

a = zeros(1,N);

for v = 1:N
    a(v) = 1/(v^2);
end

y = harmonics(a,f0,P,td,fs);
soundsc(y,fs);
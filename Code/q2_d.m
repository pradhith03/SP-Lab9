N = 2;
P = zeros(1,N);
f0 = 200;
fs = 10000;
td = 1;

a = zeros(1,N);

for v = 1:N
    a(v) = sin(pi*(v)/N);
end

y = harmonics(a,f0,P,td,fs);
soundsc(y,fs);

%-----------------------------------------------

N = 5;
P = zeros(1,N);
f0 = 50;
fs = 10000;
td = 1;

a = zeros(1,N);

for v = 1:N
    a(v) = cos(pi*(v)/N);
end

y = harmonics(a,f0,P,td,fs);
%soundsc(y,fs);

%-------------------------------------------------

N = 2;
P = zeros(1,N);
f0 = 300;
fs = 10000;
td = 1;

a = zeros(1,N);

for v = 1:N
    a(v) = v;
end

y = harmonics(a,f0,P,td,fs);
%soundsc(y,fs);
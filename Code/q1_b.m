F1 = [480, 620];
A1 = [0.5, 0.5];
P1 = [0, 0];
fs = 10000;
td = 0.5;

b1 = SineSum(A1, F1, P1, td, fs);

k = td*fs;
%disp(k);
z1 = zeros(1,k);

y = [b1,z1,b1,z1];
sound(y);
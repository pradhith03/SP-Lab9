F2 = [440, 480];
A2 = [0.5, 0.5];
P2 = [0, 0];
fs = 10000;
td = 2;

b2 = SineSum(A2, F2, P2, td, fs);

k = td*fs;
%disp(k);
z2 = zeros(1,k);

y = [b2,z2,b2,z2,b2,z2,b2,z2];
sound(y);
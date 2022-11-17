F = [350, 440];
A = [0.5, 0.5];
P = [0, 0];
fs = 10000;
td = 4;

xn = SineSum(A, F, P, td, fs);
sound(xn);

stem(1:length(xn), xn);
axis([0 100 -1 1]);

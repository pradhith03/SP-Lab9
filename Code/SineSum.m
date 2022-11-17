function xn = SineSum(A,F,P,td,fs)
t = 0:1/fs:td;
n = length(t);
xn = zeros(1,n);

nA = length(A);

for v = 1:nA
    xn = xn+(A(v)*sin((2*pi*F(v)*t)) + P(v));
end
end
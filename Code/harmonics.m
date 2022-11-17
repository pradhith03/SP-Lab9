function xn = harmonics(A,f0,P,td,fs)
    n = length(A);
    F = zeros(1,n);

    for v = 1:n
        F(v) = v*f0;
    end
    xn = SineSum(A,F,P,td,fs);
end
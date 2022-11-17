N = 5;
A = zeros(1,N);

for v = 1:N
    A(v) = 1/(v^2);
end

F_notes = 50:5:100;
P = zeros(1,N);
fs = 10000;
M = length(F_notes);
td_notes = ones(1,M);

adsr = [0.2,0.2,0.7,0.4,0.2];

y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
soundsc(y);
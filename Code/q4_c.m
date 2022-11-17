N = 5;
A = zeros(1,N);

for v = 1:N
    A(v) = 1/(v^2);
end

M = 5;
F_notes = (50 + 50*rand(1,M));
td_notes = (0.5 + rand(1,M));
P = zeros(1,N);

fs = 10000;
M = length(F_notes);
adsr = [0.2,0.2,0.7,0.4,0.2];

y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
soundsc(y);
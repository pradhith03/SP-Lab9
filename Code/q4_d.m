N = 2;
A = zeros(1,N);

for v = 1:N
    A(v) = sin(pi*(v)/N);
end

F_notes = [350,400,350,450];
F_notes1 = [350,400,350,300];
F_notes2 = [350,400,350,350];
F_notes = [F_notes,F_notes1,F_notes,F_notes2];
F_notes3 = F_notes + 50;
F_notes = [F_notes,F_notes3];
P = zeros(1,N);
fs = 10000;
M = length(F_notes);
td_notes1 = 0.5*ones(1,M/2);
td_notes2 = 0.25*ones(1,M/2);
td_notes = [td_notes1,td_notes2];

adsr = [0.2,0.2,0.7,0.4,0.2];

y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
soundsc(y,fs);
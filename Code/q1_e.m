F = [350, 440];
A = [0.5, 0.5];
P = [0, 0];
fs = 10000;
td = 4;

y = SineSum(A, F, P, td, fs);

%----------------------------------------------------------
F1 = [480, 620];
A1 = [0.5, 0.5];
P1 = [0, 0];
fs = 10000;
td = 0.5;

b1 = SineSum(A1, F1, P1, td, fs);

k = td*fs;
z1 = zeros(1,k);

y1 = [b1,z1,b1,z1];

%----------------------------------------------------------
F2 = [440, 480];
A2 = [0.5, 0.5];
P2 = [0, 0];
fs = 10000;
td = 2;

b2 = SineSum(A2, F2, P2, td, fs);

k = td*fs;
z2 = zeros(1,k);

y2 = [b2,z2,b2,z2,b2,z2,b2,z2];

%-----------------------------------------------------------

figure(1);
subplot 311;
plot(1:length(y),y,'red',LineWidth=0.75);
xlabel("t");
ylabel("x1(t)");
axis([0 500 -1 1]);
grid on;

subplot 312;
plot(1:length(y1),y1,'green',LineWidth=0.75);
xlabel("t");
ylabel("x2(t)");
axis([0 500 -1 1]);
grid on;

subplot 313;
plot(1:length(y2),y2,'blue',LineWidth=0.75);
xlabel("t");
ylabel("x3(t)");
axis([0 500 -1 1]);
grid on;

sgtitle("Familiar Sounds");
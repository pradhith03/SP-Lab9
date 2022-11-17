N = 2;
P = zeros(1,N);
f0 = 300;
fs = 10000;
td = 2;

a = zeros(1,N);

for v = 1:N
    a(v) = sin(pi*(v)/N);
end

y = harmonics(a,f0,P,td,fs);

[t_env, env] = envelope(2*0.2,2*0.2,0.7,2*0.4,2*0.2,fs);

soundsc(y.*env, fs);

figure(1);

subplot 311;
plot(t_env,y,'r',LineWidth=0.75);
xlabel("t");
ylabel("xn(t)");
title("Input Signal");
grid on;

subplot 312;
plot(t_env,env,'b',LineWidth=0.75);
xlabel("t");
ylabel("env(t)");
grid on;
title("ADSR curve");

subplot 313;
plot(t_env,y.*env,'black',LineWidth=0.75);
xlabel("t");
ylabel("xn.*env(t)");
grid on;
title("Enveloped Signal");

sgtitle("f_0 = "+f0+" Hz");
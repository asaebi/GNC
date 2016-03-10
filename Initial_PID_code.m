% PID controller

num = [1 0];
den = [1 2 1];
Gp = tf(num,den);
H = 1;

M = feedback (Gp,H);
step(M);
grid on
hold on

%%
kp= 5;
ki=4;
kd= 0;

Gc = pid(kp,ki,kd);
Mc = feedback (Gc*Gp,H);
step (Mc)

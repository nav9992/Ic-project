vd = input('disc. vol');
r = input('comp. ratio');
T1 = input('inlet temp');
P1 = input('inlet pressure');
y = input('adia. index');
m = input('mass of mixture');
qin = input('heat input');
Cv = input('Specific heat in constant volume');
v2 = vd/(r-1);
v1 = v2 + vd;
P2 = P1*(v1/v2)^y;
T2 = T1*r^(y-1);
T3 = qin/(m*Cv)+T2;
P3 = P2*(T3/T2);
P4 = P3*(1/r^y);
T4 = T3*(1/r^(y-1));
Win = Cv*(T1-T2);
Wout = Cv*(T3-T4);
qout = Cv*(T1-T4);
Wnet = Win + Wout;
eff = 1-1/(r^(y-1));
eff1 = Wnet/qin;
chk = qin + qout - Win -Wout;
fprintf('clearence volume(v2) = %0.4f L\n',v2);

fprintf('total volume (v1)= %0.4f L\n',v1);
fprintf('state 2 pressure (P2) = %0.4f \n',P2);
fprintf('state 2 temperature (T2)= %0.4f K\n',T2);
fprintf('state 3 temperature(T3) = %0.4f K\n',T3);
fprintf('state 3 pressure(P3) = %0.4f \n',P3);

fprintf('state 4 pressure(P4) = 0.4%f \n',P4);
fprintf('state 4 temperature(T4) = %0.4f K\n',T4)
fprintf('Win = %0.4f \n', Win);
fprintf('Wout = %0.4f \n',Wout);
fprintf('qout = %0.4f \n', qout);
fprintf('Wnet = %0.4f \n',Wnet);
fprintf('efficency with r and gamma = %0.4f \n',eff);
fprintf('efficency with workdone and heat input = %0.4f \n',eff1);
fprintf('result chekings = %0.4f \n',chk);
















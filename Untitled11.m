r = 8;
R = 5;
L = 0.1;
B = 0.1;
Ach = pi*B^2/4;
Ap  = pi*B^2/4;
Vd  = pi*B^2/(4*L);
N = 2400;
t = 1:360;
for i = 1:360
V(i)   = ( Vd / (r-1) ) * ( 1 + 0.5*(r-1) * (R + 1 - cosd(t(i)) - sqrt(R^2-(sind(t(i)).^2)) ) );
end
plot(t,V)
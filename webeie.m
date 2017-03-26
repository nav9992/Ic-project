y = 60; 
x = 180;
t=1:360;
for i = 2:360
    if t(i)<x
f(i)=0;
    else
        f(i) = 1-exp(-5*((t(i)-x)/y)^3);
    end
end
plot(t,f)

%% lēnā programma
clear x
clear t
clear sT
N = 2^23;
T = 0.05;
W=60;
d = 0.5;
f = 10e3;
for k = 1:N
    t(k) = (k-1)*W/N;
    sT(k)=mod(k,T*N/W)<(d*T*N/W);
    x(k) = sT(k)*sin(2*pi*f*t(k));
end
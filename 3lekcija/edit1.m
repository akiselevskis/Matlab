%% šis ir skripta faila piemērs
% to var palaist rakstt edit1 komandlogā
% Date Modified 13_12_2023
t = 0:0.01:3;
f = 0.4;
A0 = 0; A = 1;
y = A0 + A*sin(2*pi*f*t);
plot(t,y)
shg %show  graph*
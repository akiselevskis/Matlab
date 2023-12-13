function [y,t]=function1(f,A)
if nargin==0 %nargin - number of input arguments
  f=1;A=1;
end
%% šis ir skripta faila piemērs
% to var palaist rakstt edit1 komandlogā
% Date Modified 13_12_2023
t = 0:0.01:3;
%f = 0.4;
A0 = 0; %A = 1;
y = A0 + A*sin_kv(2*pi*f*t);
if nargout ==0
    plot(t,y)
end

function y = sin_kv(t)
y = sin(t).^2;
shg %show  graph*
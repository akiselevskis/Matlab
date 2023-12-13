x=(-1:0.01:1);
y=(-1:0.01:1);
R = 1;
z = sqrt(R.^2-(x.^2+y.^2));
plot3(x,y,real(z))
grid
[X,Y] = meshgrid(x,y);
Z = sqrt(R.^2-(X.^2+Y.^2));
plot3(X,Y,real(Z))
shg
%%
grid
shg
Z2 = -sqrt(R.^2-(X.^2+Y.^2));
Xk = [X,X];
Yk = [Y,Y];
Zk = [Z,Z2];
mesh(Xk, Yk, real(Zk))
%% 1. sphere
[X,Y,Z] = sphere;
mesh(X,Y,Z)
%% 2. sphere
[X,Y,Z] = sphere(100);
mesh(X,Y,Z)
%% Turpinājums
[X,Y,Z] = sphere(100);
ind = ((Z>0.5)&(Z<0.6));
Z(ind)=NaN;
mesh(X,Y,Z)
shg
%% Modifikacija (Redzams tikai izgriezums)
[X,Y,Z] = sphere(100);
ind = ((Z<0.5)|(Z>0.6));
Z(ind)=NaN;
mesh(X,Y,Z)
xlim([-1 1])
ylim([-1 1])
shg
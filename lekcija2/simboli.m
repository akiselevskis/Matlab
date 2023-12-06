%% simboliskā matemātika
syms a b c d
A = [a b; c d]

%% 2. uzdevums
syms a x
z = a*x^2
diff(z, x)
diff(z, a)
%% 3. uzdevums
r = x^2 + 3*x + 4
diff(r, x)
%% 4. uzdevums
z = x^5*y^3
p = diff(z, y)
int(p, y)
%% 5. uzdevuma paraugs
% noteiktais integralis
syms x
int (x^2, x, -3, 3)
%% 5 uzdevums
syms x
int(sin(x), x, 0, pi)
%% 6 uzdevums
syms x
int(sin(x)^2, x, 0, pi/3)
double(int(sin(x)^2, x, 0, pi/3))
%% 7 uzdevuma piemers
% robežas
syms x
limit(1/(x-1), x, 1, 'left')
limit(1/(x-1), x, 1, 'right')
% vienadojuma risināšana
solve(x^2-3*x+2==0,x) %atrod saknes - divas vienadibas zīmes!
%% vienadojumu sistemas
syms x y
[x_atb, y_atb]=solve(5*x+2*y==16, x-y==-1)
atb=solve(5*x+2*y==16, x-y==-1)
%% vienkāršošana
syms x
F = (x-1)*(x-2)/((x-3)*(x-4))
Fi = diff(F)
% Fi ir "pietiekāmi sarežģīts«,vienkāršosim:
simplify(Fi)
%% citi vienkāršojumu veidi
syms x
F = (x - 1)*(x - 2)
% kā atvērt iekavas:
F2 = expand(F)
% kā pārveidot reizīnātājos:
factor(F2)
% kā pārveidot pēc hornera shēmas:
horner(F2)
%collect...
%% substitūcijas
syms x y z
z = x^2+y^3
subs(z,y,5*x)
%z funckijā substitē y ar 5^x
%% "kā skaistāk attēlot 1«
syms x
F = ((x - 1)*(x - 2))/((x - 3)*(x - 4));
pretty(F)
%% "kā skaistāk attēlot-2"
latex(F)
Fltx = latex(F)
h = text(0.5,0.5,['$',Fltx,'$']); set(h,'Interpreter','latex')
%% 8. Uzdevums
syms x y t
z = x^2+y^2
z = subs(z, x, sin(t))
z = subs(z, y, cos(t))
z
simplify(z)
%% grafiku zīmēšana
syms x
F = ((x - 1)*(x - 2))/((x - 3)*(x - 4));
ezplot(F)
%% 2. grafika zīmēšana
syms x
yd = diff(x^2, x)
y = x^2;
x = [-3:0.01:3];
yv = vectorize(y)
ydv = vectorize(yd)
yn = x.^2;
yv
yn = eval(yv)
ydn = eval(ydv)
plot(x,yn,x,ydn)
y_latex = latex(y);
yd_latex = latex(yd);
h=legend(['$', y_latex, '$'],['$', yd_latex, '$']);set(h,'Interpreter','latex')
%% simboliskās konstantes
delta = sym('1/10')
delta = sym('1/100')
delta = sym(1/10,'f')
delta = sym(1/10, 'r')
delta = sym(1/10, 'e')
delta = sym(1/10, 'd')
digits
digits(10)
delta = sym(1/10,'d')
A = hilb(3)
A = sym(A)
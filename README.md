# Matlab
Matlab kursu materiali vai atskaites
Komandas pieraksta ar **bold**
Specifisku piemerus pieraksta ar *italic*


## 1. lekcija
x = (1 2;3 4) (izveido 

Projekts - polinomial estimate



## 2. lekcija
**gca** (launces an empty gnuplot) \
[x,y] = **ginput**(7) (gnuplotā ļauj izvēlēties 7 punktus. Obgligāti jāiet no kreisās puses uz labo.) \
**edit** (Atver script failu) \
save grafika_likne.mat x y (Izveido failu grafika_likne.mat, kuru var ielādēt editorā ar "**load**") \
**legend** \
edit failus saglabā ar **.m** pagarinājumu \
**splain** grafika izlidzināšanas instruments. \ 

edit faili uzrāda kļūdas terminālī, tāpēc labāk ir ierakstīt edit faila vārdu (bez .m) termināli, nevis spiest "play" \

Uzspiežot uz koda daļas starp divām %%, var palaist tikai to daļu! Ar CTRL + ENTER. \

**semilogx**(x,y,'o-') (attēlot datus ar logaritmisko skalu uz x ass) \
semilogy ir uz y ass \
loglog ir logaritmiskā skala uz abām asīm \

Var izmantot liveditor failus vieglākai koda vizualizācijai \

### Marķieri
'parent' mainigais. paceļ vienu zaru augstāk.

### Simboliskā matemātika matlabā
ar sym veido simboliskās matricas! \
```
a = sym('a', [2, 3])
```
### Atvasināšana
syms x (definē x kā simbolisko mainīgo)
**diff**(x^2) (atvasina) \
diff(z, a) = atvasina z funckiju, kur x = mainigais un a = const!!
### Integrēšana
**int**

**simplify** (priekš zināmām formulām, nevis tās atšifrējuma

## 3. lekcija
3 veidi kā izmantot mathlab: command window, Editor Script, Editor Function.
shg to make plot pop up in front!
Editor failu nedrīkst saukt matlab funckiju vārdo! Nedrīkt "sin.m" vai "plot.m"
Alt+enter to run
Function editor is the Editor script, but you start with function *function1*(f), \
and then launch it with function(3), piemēram, lai palaistu to failu, kur f argumenta vietā būs 3. \
Funckija neietekmē workspace argumentus!!!, jo tā izmanto iekšējo (lokālo) mainīgo tipu (tāpat kā C) \
**clear** lai izdzēstu visus workspace argumentus

click on number to place breakpoint
dbquit to remove breakpoint

function [y]=function1(f) (y kļūs par atgriezto vērtību!) \
nargin = number of input arguments \
if nargin==0 (ja es neievietoju argumentus, argumentu vērtība ir šāda...)
```
function [y,t]=function1(f,A)
if nargin==0
  f=1;A=1;
end
```
nargout = number of input arguments \

### Funkcijas
Funckijas var nozīmēt programmas beigās (un nedeklarēt) un tad tekstā vnk ielikt nosaukumu bez .m.
### Anonīmā funkcija
```
h =  @(t) sin(t).^2
un tad vēlāk
h(pi/6) lai iegūtu rezultātu
```
Anonīma, bet rokturim ir nosaukums h.
Fun program
```
x=(-1:0.01:1);
y=(-1:0.01:1);
R = 1;
z = sqrt(R.^2-(x.^2+y.^2));
plot3(x,y,real(z))
grid
[X,Y] = meshgrid(x,y);
Z = sqrt(R.^2-(X.^2+Y.^2));
plot3(X,Y,real(Z))
grid
shg
```
### Practical
**mesh**
**sphere**
**uicontrol;** (makes a button!!!)

## 4. lekcija
### Cikli
While:
```
a = 10;
while (a>1)
disp('Sveiks')
a = a-1;
end
```
For:
for i = [1 3 5], ir tas pats, kas for i =[1:10]
```
for i = [1 3 5]
    disp('Esi sveiks')
    fprintf('i=%d\n', i) %tāpat kā C
end
```
For (ar jēgu):
```
name = {'Viktorija', 'Ineta', 'Artūrs', 'Darja'}
for i = name
    disp(['Sveiks, ',i{1}])
    %fprintf('Sveiks, %s\n', i{1})
    %fprintf versija arī strādā
end
```
Nosacījumu operatori (if):

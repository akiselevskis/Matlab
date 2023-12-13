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

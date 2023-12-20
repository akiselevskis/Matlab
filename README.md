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
**While:**
```
a = 10;
while (a>1)
disp('Sveiks')
a = a-1;
end
```
**For:**
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
**Nosacījumu operatori (if):**
```
name = {'Viktorija', 'Ineta', 'Artūrs', 'Darja'}
%dzimums = 'ssvs';
dzimums = {'s', 's', 'v', 's'};
for i = 1:length(name)
    if dzimums{i} == 'v' %parast izmanto strcmp(dzimums{i}, 'v') vai strmatch (string match)
        disp(['Sveiks, ',name{i}])
    else
        disp(['Sveika, ',name{i}])    %if beidzas ar end!
    end
end
% drikst string = string tikai ja ir vienāds garums starp variantiem!
```
**Switch:**
```
name = {'Viktorija', 'Ineta', 'Artūrs', 'Darja'}
dzimums = {'s', 's', 'v', 's'};
for i = 1:length(name)
    switch dzimums{i}
        case 'v'
            disp(['Sveiks, ',name{i}])
        case 's'
            disp(['Sveika, ',name{i}])
    end
end
```
Jebkur tekstā ieliec error('kļudas imitacija'), lai programma beigtu strādāt tajā rindā un izdotu kļūdu! \
**Try/catch/end** (kā Pitonā):
```
%% Try/catch/end
try %ja šis nestrādā
    disp('Pamēģināsim for cikli7')
    error('Ņo')

catch %izcsauc šo
    disp('Diemžēl tas nestrādā')
    disp('Šī gan strādā')
end
```
### Programmas paātrināšana
tic
toc -> lai uzzinātu iepriekšējās programmas izpildes laiku!!!
```
tic,leenaa_programma,toc
```
Lēnas programmas piemērs:
```
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
```
Tās darbību var paātrrināt pasakot, lai funkcija atbrīvo vietu priekš mainīgajiem ieliekot tajos nulles (zeros)
```
%% Ātrāka programma
clear x
clear t
clear sT
N = 2^23;
T = 0.05;
W=60;
d = 0.5;
f = 10e3;
t = zeros(1,2^23); %allocates free space for it
sT = zeros(1,2^23); %and here
x = zeros(1,2^23); %and here
for k = 1:N
    t(k) = (k-1)*W/N;
    sT(k)=mod(k,T*N/W)<(d*T*N/W);
    x(k) = sT(k)*sin(2*pi*f*t(k));
end
```
*Drukāšana uz ekrāna arī ir ļoti lēna. Ja drukā tad paātrināt **nevar***
```
%% Vēl ātrāka programma
clear x
clear t
clear sT
N = 2^23;
T = 0.05;
W=60;
d = 0.5;
f = 10e3;
%t = zeros(1,2^23);
%sT = zeros(1,2^23);
%x = zeros(1,2^23);
k = 1:N; %pie visām vektoru vērtībām jāliek punkts, lai paātrinātos (un jānoņem cikls)
    t(k) = (k-1)*W/N;
    sT(k)=mod(k,T*N/W)<(d*T*N/W);
    x(k) = sT(k).*sin(2*pi*f*t(k))
```
Lai redzētu izpildes laiku var izmantot run&time zem run. \
Tur var redzēt lines that take the most time lai labotu kļūdainas vai garas rindas! \
**repmat**
**reshape**
**randi(x)** x vietā liek ciparu, no kura randi izvēlas nejauši!
Matlabā var turpināt rakstīt nākošajā rindā, iepriekšējā beigās uzrakstot ... (3 punktus).
Interesanta programma, kas apkopo visas lekcijas zināšanas:
```
%% Kā ģenerēt uzdevumu studentam
switch randi(3)
    case 1
        disp('Kā izveidot matricu')
        A = [randi(10),randi(10);randi(10) randi(10)]
    case 2
        fprintf('Kā izveidot vektoru ')
        fprintf('no %d līdz %d ar soli %d', randi(3),...
            randi(3)+10,randi(3))
    case 3
        w = {'sin', 'cos', 'tan'};
        fprintf('izrēķināt %s(pi/3)', w{randi(3)})
end
```

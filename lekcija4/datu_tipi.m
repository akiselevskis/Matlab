%% datu tipi maatlabaa
a = 1
b = 2
a = 1;b=2;A = [1 2; 3 4];
whos
%% char
c = 'a';
d = 'b';
double(c)
char(97)
name = 'Maris';
sum(name)
%% Šūnu matricas izmantošana
g = ['a', 'b', 'c', 'd', 'e']
g(1)
h = {'Māris', 'Pēteris', 'Jānis'}
h{2}
A = {1,[1 2;3 4], [1 2 3 ; 4 5 6; 8 9 0], 'Hello'}
A{2}
%% String objects
b = "Hello";
c = "Pēteris"
bc = [b,c]
bc
bc(2)
whos bs
whos bc
class(bc)
%% Datu struktūra
student.name = 'Māris';
student.course = 1;
student. programm = 'electronic';
student
%% Struktūru masīvs
student.name = 'Māris';
student.course = 1;
student. programm = 'electronic';
student(2).name = 'Jānis'
student
%% tabula
name = ["Māris";"Jānis";"Pēteris"];
programm = ["electronic";"chemistry";"physics"];
math = [9; 10; 4];
t = table(name, programm, math)
t.math
%% Simboliskie elementi

%% Cikli
disp('Sveiks') %parasta komanda
%% While
%while (nosacījums), kkas, kkas, end
a = 10;
while (a>1)
disp('sveiks')
a = a-1;
end
%% For
for i = [1 3 5]
    disp('Esi sveiks')
    fprintf('i=%d\n', i)
end
%% For (ar jēgu)
name = {'Viktorija', 'Ineta', 'Artūrs', 'Darja'}
for i = name
    disp(['Sveiks, ',i{1}])
    %fprintf('Sveiks, %s\n', i{1})
end
%% Nosacījumu operators (if)
name = {'Viktorija', 'Ineta', 'Artūrs', 'Darja'}
%dzimums = 'ssvs';
dzimums = {'s', 's', 'v', 's'};
for i = 1:length(name)
    if dzimums{i} == 'v' %parast izmanto strcmp(dzimums{i}, 'v') vai strmatch (string match)
        disp(['Sveiks, ',name{i}])
    %if dzimums == 's' %if beidzas ar end!
    else
        disp(['Sveika, ',name{i}])
    end
end
% drikst string = string tikai ja ir vienāds garums starp variantiem!
%% Switch
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
%% Error
%funkcja error uztaisa kļūdu kodā
name = {'Viktorija', 'Ineta', 'Artūrs', 'Darja'}
error('kļudas imitacija')
dzimums = {'s', 's', 'v', 's'};
for i = 1:length(name)
    switch dzimums{i}
        case 'v'
            disp(['Sveiks, ',name{i}])
        case 's'
            disp(['Sveika, ',name{i}])
    end
end
%% Try/catch/end
try %ja šis nestrādā
    disp('Pamēģināsim for cikli7')
    error('Ņo')

catch %izcsauc šo
    disp('Diemžēl tas nestrādā')
    disp('Šī gan strādā')
end
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
%% 








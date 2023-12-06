%-- 11/29/2023 03:56:12 PM --%
x
%% Darba direktorijas uzstādīšana
% uztaisīsim jaunu mapi
mkdir lekcija_1
cd lekcija_1
% dienasgrāmatas ieslēgšana
diary lekcija_1
diary lekcija_1_diary.m
% nodarbības beigās jāuzraksta diary off
% Mainīgie
a = 1
b = 2
c = a + b
% Matricas veidošana
A = [1 2; 3 4]
B = [5 6; 7 8]
C = A+B
C = A*B
C = A.*B
% P = I^2*R
I = [1 2 3 4 5 6];
R = 30;
P = I.^2*R
% semikolons rindas beigās
C = A.*B;
%% izvada formats
pi
format long
pi
format long long
man format
format rat
pi
format bank
pi
format short
pi
C = [9 4 6]
x = -6:2:6
C(1)
= C(1)*x.^2+C(2)*x+C(3)
y = C(1)*x.^2+C(2)*x+C(3)
% plot(x,y)
plot(x,y)
% nodefinēsim x2 ar sīkāku soli
% aprēķināsim y2
x = -6:0.01:6
plot(x,y)
y = C(1)*x.^2+C(2)*x+C(3)
plot(x,y)
x = -6:0.01:6;
y = C(1)*x.^2+C(2)*x+C(3);
plot(x,y)
x = -6:2:6;
y = C(1)*x.^2+C(2)*x+C(3);
plot(x,y)
%% Līnijas izskata maiņa
plot(x,y,'o')
plot(x,y,'--')
plot(x,y,'g')
plot(x,y,'o--g')
help plot
plot(x,y,'-.m*x')
plot(x,y,'-.m*')
%% kā attēlot vairākus grafikus
% plot(x1,y1,'b'x2,y2,x3,y3,x4,y4)
% x,y
% x2,y2
x2 = -6:0.1:6;
y2 = C(1)*x2.^2+C(2)*x2+C(3);
plot(x1,y1,'o',x2,y2)
plot(x,y,'o',x2,y2)
plot(x,y)
plot(x,y,'o',x2,y2)
x
y
x2
y2
plot(x,y,'o',x2,y2)
y = sin(x)
plot(x,y,'o',x2,y2)
y = C(1)*x.^2+C(2)*x+C(3);
plot(x,y,'o',x2,y2)
%citas grafiskas funckijas
stem(x,y)
sairs(x,y)
stairs(x,y)
bar(x,y)
plot(x,y)
x
y
plot(x,y)
x
y
plot(x,y)
% daudzdimensiju matricas
R = [0 0 0; 1 1 1; 0 0 0]
G = [1 1 1; 0 0 0; 0 0 0]
B = [0 0 0; 0 0 0; 1 1 1]
% matricu indeksācija
R(2,3)
R(2,:)
bilde(:,:,1) = R;
bilde(:,:,2) = G;
bilde(:,:,3) = B;
bilde
image(bilde)
filma(:,:,:,1) = bilde;
%% kā uztaisīt 1-nieku matricu
R = ones(3,3);
bilde(:,:,1) = R;
image(bilde)
filma(:,:,:,2) = bilde;
%% kā uztaisīt nuļļu matricu
zeros(2,2);
zeros(2,2,2);
zeros(2,2,2)
zeros(3,3,3);
bilde = zeros(3,3,3); % melna krāsa
image(bilde)
filma(:,:,:,3) = bilde;
% kā uztaisīt 0.5 matricu
bilde = ones(3,3,3)*0.5;
image(bilde)
filma(:,:,:,4) = bilde
bilde = (1,:,:) = 1;
bilde(1,:,:) = 1;
image(bilde)
filma(:,:,:,5) = bilde;
% pirmo kolonnu dzeltenu
bilde(:,1,1:2) = 1;
image(bilde)
% otro kolonnu - violētu
% R-B
filma(:,:,:,6) = bilde;
bilde(:,2, [1 3]) = 1;
image(bilde)
filma(:,:,:,7) = bilde;
rand
rng(1);
rand
rng(2);
rand
bilde = rand(3,3,3);
image(bilde)
filma(:,:,:,8) = bilde;
A = [1 2 3; 4 5 6; 7 8 9];
A(:)
R(:) = (1:-0.1:0.2]
R(:) = [1:-0.1:0.2]
G(:) = 1-linspace(0,1,9)
B(:) = 1-linspace(0,1,9);
bilde(:,:,1) = R;
bilde(:,:,2) = G;
bilde(:,:,3) = B;
image(bilde)
filma(:,:,:,9) = bilde;
%% Kā apskatīt matricu izmērus
length(R)
size(R)
size(bilde)
size(filma)
%% cikli
%for
for i = [1 2 3 4 5]
for i = 1:size(filma,4)
for i = 1:size(filma,4)
image(filma(:,:,:,i));
pause(1)
shg
end
% speciālie mainīgie
1/0
0/0
-1/0
Inf/Inf
x = [2 2 3 NaN 1 2];
y = [1 3 4 NaN 4 3];
plot(x,y)
ylim([0 5])
xlim([0 4])
grid
xlabel('x - koordināte')
ylabel('y - koordināte')
no grid
grid no
nogrid
ngrid
agrid
grid
ngrid
pgrid
grid
gtext('\leftarrow šo līniju nezīmēsim')
text(1,1,'te nekā nav')
text(1,2,'\alpha')
text(1,3,'\Alpha')
text(1,3,'\Omega')
text(1,-1,'\Omega')
%% Mērījumu datu apstrāde
Um = [-1 0.3 1.5 2.5 3.2]
Im = [1.1 2.2 2.1 3.2 4.7]
plot(Um,Im,'-o')
% polinomu koeficientu atradīs
% polyfit funckija
%sintakse
% C = polyfit(x, y, polinoma_kārta);
C = polyfit(Um, Im, 2)
% liksim x - to nodefinēsim ar mazāku soli
UI = -1:0.01:3.2;
U = -1:0.01:3.2;
% liksim polinomiālajā izteiksmē:
I = C(1) * U.^2 + C(2) * U+C(3);
%uzzīmēsim
plot(Um, Im,'o', U, I)
%% pamēģināsim 3. kārtas polinomu
C = polyfit(Um, Im, 3)
%polinomu varam aprēķināt ar polyval
% polynomial value
% sintakse
% polyval(C,x)
I = polyval(C, U);
plot(Um, Im,'o', U, I)
% tests ar 4-tās kārtas
C = polyfit(Um, Im, 4)
I = polyval(C, U);
plot(Um, Im,'o', U, I)
C = polyfit(Um, Im, 1)
I = polyval(C, U);
plot(Um, Im,'o', U, I)
Um = [-1 0.3 1.5 2.5 3.2]
Im [1.1 2.2 2.1 3.2 4.7; 0.9 1.8 2.6 3.3 4.5; 1.0 2.0 2.4 3.4 4.3; 0.8 1.9 2.3 3.5 4.4; 0.9 2.1 2.5 3.6 4.4]
Im = [1.1 2.2 2.1 3.2 4.7; 0.9 1.8 2.6 3.3 4.5; 1.0 2.0 2.4 3.4 4.3; 0.8 1.9 2.3 3.5 4.4; 0.9 2.1 2.5 3.6 4.4]
figure
plot(Um, Im, '-o')
title('jā - pareizais grafiks')
figure(3)
Back = Im
Im = Im`
Im = Im'
plot(Um, Im, '-o')
Im = Im'
title('yes - correct graphic')
lm
Im
lm
1m
Im
Im_vid = mean(Im_
Im_vid = mean(Im)
C = polyfit(Um, Im, 3)
C = polyfit(Um, mean(Im), 3)
U = mean(lm)
U = mean(Im)
I = polyval(C, U);
plot(Um, Im, 'o', U, I, '-' Um, Im_vid, '*')
plot(Um, Im, 'o', U, I, '-', Um, Im_vid, '*')
plot(Um, Im, 'o'°
plot(Um, Im, 'o')
plot(Um, Im, '-')
plot(Um, Im', 'o', U, I, '-', Um, Im_vid, '*')
U
I = polyval(C, U);
plot(Um, Im', 'o', U, I, '-', Um, Im_vid, '*')
U
U = -1:0.01:3.2;
I = polyval(C, U);
plot(Um, Im', 'o', U, I, '-', Um, Im_vid, '*')
standart_deviation = std(Im)
errorbar(Um,Imean,standart_deviation)
errorbar(Um,mean(Im),standart_deviation)
errorbar(Um,mean(Im),standart_deviation,'-')
errorbar(Um,mean(Im),standart_deviation,'.')
hold on
plot(U,I)
hold off
A = imread('grafiks1.JPG');
A = imread('grafiks1');
A = imread('grafiks1.JPG');
B = imread('grafiks2.JPG');
size(A), size(B)
figure(1), image(A)
figure(2), image(B)
figure(2)
image([380, 780],[0 100], B)
figure(2)
image([380, 780],[100 0], B)
image([380, 780],[0 100], B)
figure(2)
h = image([380, 780],[100 0], B)
set(gca, 'YDir', 'normal')
[x,y]=ginput(5)
save measurement_data.mat x y
load('measurement_data.mat')
hold on
plot(x,y,'o')
hold off
diary off
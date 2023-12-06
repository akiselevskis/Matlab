load grafika_likne.mat
plot(x, y, 'o')
%% spline pielaikošana
% definēsim x ar mazāku soli
xx = min(x):0.01:max(x);

%% sintakse
% yy = spline(x, y, xx)
% kur x, y - merijuma dati
% xx x ar smalkaku soli
% yy būs kubisko splainu vertibas xx veriibam

yy = spline(x,y,xx);
plot(x, y, 'o', xx, yy)
legend('Merijuma dati', 'kubiskie splaini')

%% logaritmiskie grafiki
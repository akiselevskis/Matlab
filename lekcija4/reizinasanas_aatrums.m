a = rand(1,1e8);
b = rand(1,1e8);
tic
 sum(a.*b);
toc
bt = b';
tic
a*bt;
toc
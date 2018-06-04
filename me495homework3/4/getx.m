function [ x ] = getx( p )
if p==1
    x=1;
else
m=1/p+1;
x0=unifrnd (1,m);
y0=floor(x0);
if y0==1
    x=1;
else
    x=0;
end
end
end


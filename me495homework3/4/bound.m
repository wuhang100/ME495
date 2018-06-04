function [ d ] = bound( position )
x=position(1);
y=position(2);

if x<1 || x>25 || y<1 || y>25
    d=0;
else
    d=1;
end
end


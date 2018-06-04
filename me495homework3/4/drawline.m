function [ ] = drawline( position0,position1 )


x0=position0(1);
y0=position0(2);
x1=position1(1);
y1=position1(2);
line([x0,x1],[y0,y1])
hold on

end


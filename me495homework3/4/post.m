function [ EP ] = post( position )
post=0;
for i=1:100
    p=xtabel(position);
    x=getx(p);
    p_theta_x = posteria( x,position );
    post=post+p_theta_x;
end
EP=post/100;
end


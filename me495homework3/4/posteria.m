function [ p_theta_x ] = posteria( x,position )
p_theta=1/625;
p2=1/2;
p3=1/3;
p4=1/4;
p100=1/100;

if x==0
    p_theta_x=0;
    
else
   xp=position(1);
   yp=position(2);

   i=0;p_x=0;
   
   %1/4
   for i=0:6
   test=[xp-3+i,yp+3];
   d=bound(test);
   if d==1
       pxi=p4*p_theta;
       i=i+1;
       p_x=p_x+pxi;
   end
   end
   
   for i=0:6
   test=[xp-3+i,yp-3];
   d=bound(test);
   if d==1
       pxi=p4*p_theta;
       i=i+1;
       p_x=p_x+pxi;
   end
   end
   
   %1/3
   for i=0:4
   test=[xp-2+i,yp+2];
   d=bound(test);
   if d==1
       pxi=p3*p_theta;
       i=i+1;
       p_x=p_x+pxi;
   end
   end
   
   for i=0:4
   test=[xp-2+i,yp-2];
   d=bound(test);
   if d==1
       pxi=p3*p_theta;
       i=i+1;
       p_x=p_x+pxi;
   end
   end
   
   %1/2
   for i=0:2
   test=[xp-1+i,yp+1];
   d=bound(test);
   if d==1
       pxi=p2*p_theta;
       i=i+1;
       p_x=p_x+pxi;
   end
   end
   
   for i=0:2
   test=[xp-1+i,yp-1];
   d=bound(test);
   if d==1
       pxi=p2*p_theta;
       i=i+1;
       p_x=p_x+pxi;
   end
   end
   
  %1
  pxi=1*p_theta;
  i=i+1;
  p_x=p_x+pxi;

  p_x=p_x+p100*(625-i)*p_theta;
  
  p_theta_x=1*p_theta/p_x;    
end
end


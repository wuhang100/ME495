function [ position2 ] = step( u, position )

x=position(1);
y=position(2);

if u==0
    position2=position;
end

if u==1
   position2=[x-1,y]; 
   d=bound(position2);
   if d==0
       position2=position;
   end
end

if u==2
   position2=[x,y+1]; 
   d=bound(position2);
   if d==0
       position2=position;
   end
end

if u==3
   position2=[x+1,y]; 
   d=bound(position2);
   if d==0
       position2=position;
   end
end

if u==4
   position2=[x,y-1]; 
   d=bound(position2);
   if d==0
       position2=position;
   end
end

end


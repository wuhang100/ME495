function  name0  = genname( i )
   name0=num2str(i);
   if mod(length(name0),2)==1
       name0=['0',name0];
   end
end


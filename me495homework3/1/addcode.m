function [ output ] = addcode( input,con,num )
[m,n]=size(num);
for i=1:n
input{1,num(i)} = [num2str(con),input{1,num(i)}];
end
output=input;
end


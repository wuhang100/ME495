clear;
X1={};
%X1={0.6558 0.0729 0.0729 0.0081 0.0729 0.0081 0.0081 0.0009 0.0729 0.0081 0.0081 0.0009 0.0081 0.0009 0.0009 0.0001};
X1={2 6 7 10 10 11};
%X1={11 2 6 7 10 10};
num=size(X1);
for i=1:num(1,2)
   name0=num2str(i);
   if length(name0)<2;
       name0=['0',name0];
   end
   name{i}=name0;
   X1{2,i}=name0;
end
for i=1:num(1,2)
   x1(i)=X1{1,i}; 
end
x2=1:num(1,2);
x3=[x1;x2];
x3=x3';
[~,id] = sort(x3(:,1));
p=x3(id,:);
p=p';
p0={};
OUT=cell(1,num(2));
X1=paixu(X1);
for i=1:num(2)-1
   tmin1=X1{1,1};
   tmin2=X1{1,2};
   name1=genname(X1{2,1});
   name2=genname(X1{2,2});
   tem1=splitname(name1);
   OUT=addcode(OUT,0,tem1);
   tem2=splitname(name2);
   OUT=addcode(OUT,1,tem2);   
   [m,n]=size(X1);
   ptemp(1,:)=[tmin1+tmin2,X1{1,3:n}];
   for j=3:n
   ptemp(2,j-1)=str2num(X1{2,j});
   end
   [m,n]=size(ptemp);
   p0{1,1}=ptemp(1);
   p0{2,1}=[name1,name2];
   for j=1:n-1
      p0{1,j+1}= ptemp(1,j+1);
      p0{2,j+1}= genname(ptemp(2,j+1));
   end
   X1={};
   X1=paixu(p0);
   ptemp=[];
   p0={};

end

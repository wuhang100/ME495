function p = paixu( X1 )
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
x0=[];
[m,n]=size(X1);
for i=1:n
   x0(i,1)=X1{1,i};
end

[~,id] = sort(x0(:,1));

for i=1:n
   p{1,i}=X1{1,id(i,1)};
   p{2,i}=X1{2,id(i,1)};
end
end


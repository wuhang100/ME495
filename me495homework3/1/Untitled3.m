clear
A='01';
B='010203';
for i=1:(length(B)/2)
temp{i}=[B(2*i-1),B(2*i)];
end
TF1=strcmp(temp{1},A);
if TF1==1
i='ok'
end

AA=[1,2;2,3]
min(AA)
[lib,lic]=find(AA==2)
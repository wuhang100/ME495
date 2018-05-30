function  temp  = splitname( B )

for i=1:(length(B)/2)
temp(i)=str2num([B(2*i-1),B(2*i)]);
end

end


function [ p ] = xtabel( position )

p=1/100;

x=position(1);
y=position(2);

%1/4
if y==1 || y==7
    for i=1:7
        if x==i
            p=1/4;
        end
        i=i+1;
    end
end

%1/3
if y==2 || y==6
    for i=2:6
        if x==i
            p=1/3;
        end
        i=i+1;
    end
end

%1/2
if y==3 || y==5
    for i=3:5
        if x==i
            p=1/2;
        end
        i=i+1;
    end
end

if x==4 && y==4
    p=1;
end

end


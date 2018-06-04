position=[10,10];    % origin position
plot(position(1),position(2),'.')
hold on
 position2 = step( 0, position );
 EP =post(position2);
 U=0;
for i=1:20000
for u=0:4
 position2 = step( u, position );
 EP0 =post(position2);
 if EP0>=EP
   EP=EP0;
   U=u;
 end
end

position2 = step( U, position );
drawline( position ,position2 )
position=position2;
% if position(1)==4 && position(2)==4
%     break
% end
 end
 xlim([0 25])
 ylim([0 25])
hold on
plot(4,4,'*')


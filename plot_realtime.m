for i=1:10:50000
    plot(Y(1:i,1,16).*sin(Y(1:i,3,16)),-Y(1:i,1,16).*cos(Y(1:i,3,16)),'k');
    pause(0.01)
end
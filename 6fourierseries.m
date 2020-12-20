t=0:0.001:1.5
f=0
x=[0 0 .5 .5 1 1]
    y=[0 1 1 -1 1 -1]
for n=1:2:200
    subplot(1,1,1)
    f=f+(4/n*pi)*sin(2*n*pi*t)
    hold on;
    plot(t,f);
    error=mean((abs(f)-1).^2)
    title('ERROR');
    pause;
    clf;
    if error<0.05
        break;
    end;
end;
f=1:2:19
amp=4./(f*pi)
subplot(2,2,2)
stem(0,0,'b')
hold on;
stem(f,amp,'b')
ylabel('Frequency')
xlabel('Amplitude')
title('Amplitude Spectrum')
subplot(2,2,3)
bn=4./(f*pi)
an=0
angle=-(atan(bn/an))*(180/pi)
stem(0,0,'b')
hold on;
stem(f,angle,'b')
ylabel('Frequency')
xlabel('Angle')
title('Phase Spectrum')





A=10;
fs=1000;
Ts=1/fs;
t=(1:1000)*Ts;
x=10*sin(2*pi*200*t)+5*sin(2*pi*400*t)+12*sin(2*pi*300*t);
N=length(t);
f=fs.*(-N/2:N/2-1)/N;
N=length(t);
%FFT With Built-in Function
yy=fft(x);
yyy=fftshift(yy);
subplot(2, 1, 1);
plot(f,(2*abs(yyy)/N));
title('Frequency spectrum for given signal with FFT builtin function');
xlabel('Frequency(Hz)');
ylabel('Amplitude(volt)');
%FFT without Built-in Function
mm=[];
for(k=1:N)
for(n=1:N)
y1(n)=x(n).*exp(-j*2*pi*((-N/2)+n-1)*((-N/2)+k-1)/N);
end
mm=[mm sum(y1)];
end
length(mm);
subplot(2, 1, 2);
plot(f,2*abs(mm)/N);
title('Frequency spectrum for given signal without FFT builtin function');
xlabel('Frequency(Hz)');
ylabel('Amplitude(volt)');

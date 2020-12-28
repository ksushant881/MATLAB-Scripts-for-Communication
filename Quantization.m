% This script creates a random signal, and then quantizes it. The signal
% is oversampled and then decimated.
% * Oversampling is the process of taking in samples at a faster rate (in
% this script "os" times faster) than you need.
% * Decimation is the process Decimation is the process of taking only one
% of every "os" samples of an oversampled signal to get the final sampling
% rate.
%
% Processing of the oversampled signal can give some benefit, as you will
% see if you run the script.
fprintf('\n\nE71 Lab, Oversampling and Quantization\n');
b=3; % Number of bits.
N=100; % Number of samples in final signal.
% Choose the input type.
choice = questdlg('Choose input','Input',...
'Sine','Sawtooth','Random','Random');
fprintf('Bits = %g, levels = %g, signal = %s.\n', b, 2^b, choice);
% This large loop generates and analyzes data at several different
% oversampling rates (all powers of two).
foros_pow=0:4
os=2^os_pow; % Oversampling rate.
N_os=N*os; % Number of samples in oversampled signal
 n=0:(N_os-1); % Index
% Create the oversampled input data sequence.
switch choice
case'Sine'
 x=sin(2*pi*n/N_os);
case'Sawtooth'
 x=sawtooth(2*pi*n/N_os);
case'Random'
 x=randn(1,N_os); % Random data
 % Smooth to begin to remove fast variations.
 x=filter(ones(1,4*os)/4/os,1,x);
 x=x/abs(max(x)); % Scale to +/- 1
end
% Signal is restricted to between -1 and +1.
x(x>=1)=(1-eps); % Make signal from -1 to just less than 1.
x(x<-1)=-1;
%Quantize the oversampled raw signal
xq=floor((x+1)*2^(b-1)); %Signal is one of 2^b int values (0 to 2^b-1)
xq=xq/(2^(b-1)); %Signal is from 0 to 2 (quantized)
xq=xq-(2^(b)-1)/2^(b); %Shift signal down (rounding)
%Smooth (running average) the quantized oversampled signal
x_qs=filter(ones(1,os)/os,1,xq);
%Smooth the oversampled signal
x_s=filter(ones(1,os)/os,1,x);
%Quantize the oversampled smoothed signal
x_sq=floor((x_s+1)*2^(b-1)); % Signal is one of 2^n int values (0 to 2^n-1)
x_sq=x_sq/(2^(b-1)); % Signal is from 0 to 2 (quantized)
x_sq=x_sq-(2^(b)-1)/2^(b); % Shift signal down (rounding)
% Resample at lower rate (decimation)
x_sq=x_sq(1:os:end); % Quant noise, smoothed, then quantized.
x_s=x_s(1:os:end); % Smoothed signal
x_qs=x_qs(1:os:end); % Quant noise, quantized, then smoothed.
xe_qs=x_s-x_qs; % Error between smoothed and quantized/smoothed
xe_sq=x_s-x_sq; % Error between smoothed and smoothed/quantized
subplot(211)
stem(x_s,'b');
holdon;
stem(x_sq,'r');
holdon;
stem(xe_sq*2^(b-1),'g');
legend('exact','quantized','error*2^{(b-1)}','Location','Southeast')
axis([0 N -2 2]);
title(sprintf('Smoothed then quantized, %g bits, %g levels, os=%g ',b,2^b, os));
holdoff
subplot(212)
stem(x_s,'b');
holdon;
stem(x_qs,'r');
holdon;
stem(xe_qs*2^(b-1),'g');
legend('exact','quantized','error*2^{(b-1)}','Location','Southeast')
axis([0 N -2 2]);
title(sprintf('Quantized then smoothed, %g bits, %g levels, os=%g ',b,2^b, os));
holdoff
sqnr_sq=10*log10(sum(x_s.^2)/sum(xe_sq.^2));
sqnr_qs=10*log10(sum(x_s.^2)/sum(xe_qs.^2));
fprintf('Oversampling = %g, ', os);
fprintf('sqnr_sq = %g, sqnr_qs = %g, sqnr_qs-sqnr_sq = %g\n',...
sqnr_sq, sqnr_qs, sqnr_qs-sqnr_sq);
pause(1);

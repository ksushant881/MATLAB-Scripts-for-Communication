% This script creates a signal, and then quantizes it to a specified number
% of bits. It then calculates the quantization error.
% see if you run the script.
fprintf('\nE71 Lab, Sampling and Quantization\n');
b=3; % Number of bits.
N=120; % Number of samples in final signal.
n=0:(N-1); %Index
% Choose the input type.
choice = questdlg('Choose input','Input',...
'Sine','Sawtooth','Random','Random');
fprintf('Bits = %g, levels = %g, signal = %s.\n', b, 2^b, choice);
% Create the input data sequence.
switch choice
case'Sine'
 x=sin(2*pi*n/N);
case'Sawtooth'
 x=sawtooth(2*pi*n/N);
case'Random'
 x=randn(1,N); % Random data
 x=x/max(abs(x)); % Scale to +/- 1
end
% Signal is restricted to between -1 and +1.
x(x>=1)=(1-eps); % Make signal from -1 to just less than 1.
x(x<-1)=-1;
% Quantize a signal to "b" bits. 
xq=floor((x+1)*2^(b-1)); % Signal is one of 2^n int values (0 to 2^n-1)
xq=xq/(2^(b-1)); % Signal is from 0 to 2 (quantized)
xq=xq-(2^(b)-1)/2^(b); % Shift signal down (rounding)
xe=x-xq; % Quantization error
stem(x,'b');
hold on;
stem(xq,'r');
hold on;
stem(xe,'g');
legend('exact','quantized','error','Location','Southeast')
title(sprintf('Signal, Quantized signal and Error for %g bits, %g quantization levels',b,2^b));
hold off;
fs=1000; % the sampling frequency 
dt = 1/fs; 
t = dt:dt:10000*dt; % to gather signal data till 10000th sample
cosine = 2*cos(2*pi*100*t); % a cosine wave with 100Hz frequency
cosine1 = 10*cos(2*pi*200*t); % a cosine wave with 200Hz frequency
sine = 100*sin(2*pi*300*t); % a sine wave with 300Hz frequency
y = cosine + cosine1 + sine; % adding the above 3 signal
pwelch(y,[], [], [], 'psd') % plotting the PSD using welch method
span = 10; % Filter span
rolloff = 0.2; % Rolloff factor
sps = 8; % Samples per symbol
M = 4; % Modulation alphabet size
k = log2(M); % Bits/symbol
phOffset = pi/4; % Phase offset (radians)
n = 1; % Plot every nth value of the signal
offset = 0; % Plot every nth value of the signal, starting from offset+1
filtCoeff = rcosdesign(rolloff,span,sps);
rng default
data = randi([0 M-1],5000,1); 
dataMod = pskmod(data,M,phOffset);
txSig = upfirdn(dataMod,filtCoeff,sps);
EbNo = 20; 
snr = EbNo + 10*log10(k) - 10*log10(sps);
rxSig = awgn(txSig,snr,'measured'); 
rxSigFilt = upfirdn(rxSig, filtCoeff,1,sps);
dataOut = pskdemod(rxSigFilt,M,phOffset,'gray');
h = scatterplot(sqrt(sps)*txSig(sps*span+1:end-sps*span),sps,offset,'g.');
hold on
scatterplot(rxSigFilt(span+1:end-span),n,offset,'kx',h)
scatterplot(dataMod,n,offset,'r*',h)
legend('Transmit Signal','Received Signal','Ideal','location','best')
eyediagram(txSig(sps*span+1:sps*span+1000),2*sps)
eyediagram(rxSig(sps*span+1:sps*span+1000),2*sps)
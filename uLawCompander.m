Mu = 255; % Parameter for mu-law compander
sig = -4:.1:4; 
sig = exp(sig); % Exponential signal to quantize
V = max(sig); 
% 1. Quantize using equal-length intervals and no compander.
[index,quants,distor] = quantiz(sig,0:floor(V),0:ceil(V)); 
% 2. Use same partition and codebook, but compress
% before quantizing and expand afterwards.
compsig = compand(sig,Mu,V,'mu/compressor'); 
[index,quants] = quantiz(compsig,0:floor(V),0:ceil(V)); 
newsig = compand(quants,Mu,max(quants),'mu/expander'); 
distor2 = sum((newsig-sig).^2)/length(sig); 
[distor, distor2] % Display both mean square distortions.
plot(sig); % Plot original signal. 
hold on; 
plot(compsig,'r--'); % Plot companded signal. 
legend('Original','Companded','Location','NorthWest')
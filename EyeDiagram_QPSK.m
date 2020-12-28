data = randi([0 3],1000,1); 
modSig = pskmod(data,4,pi/4); 
sps=4; 
txfilter = comm.RaisedCosineTransmitFilter('OutputSamplesPerSymbol',sps); 
txSig = txfilter(modSig); 
eyediagram(txSig,2*sps);

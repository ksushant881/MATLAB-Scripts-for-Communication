a=[ 1 0 1 1 1 0 0 0]; 
U=a; 
n=length(a); 
U(n+1)=U(n); 
%POLAR 
P=a; 
for k=1:n; 
if a(k)==0 
P(k)=-1; 
end 
P(n+1)=P(n); 
end 
%Bipolar 
B=a; 
f = -1; 
for k=1:n; 
if B(k)==1; 
if f==-1; 
B(k)=1; f=1; 
else 
B(k)=-1; f=-1; 
end 
end 
B(n+1)=B(n); 
end 
%Mark 
M(1)=1; 
for k=1:n; 
M(k+1)=xor(M(k), a(k)); 
end 
%Space 
S(1)=1; 
for k=1:n 
S(k+1)=not(xor(S(k), a(k))); 
end 
%Plotting Waves 
subplot(5, 1, 1); 
stairs(U) 
axis([1 n+2 -2 2]) 
title('Unipolar NRZ')  
subplot(5, 1, 2); 
stairs(P) 
axis([1 n+2 -2 2]) 
title('Polar NRZ')  
subplot(5, 1, 3);
stairs(B) 
axis([1 n+2 -2 2])  
title('NRZ AMI')  
subplot(5, 1, 4); 
stairs(M) 
axis([1 n+2 -2 2]) 
title('NRZ-Mark')  
subplot(5, 1, 5); 
stairs(S) 
axis([1 n+2 -2 2]) 
title('NRZ-Space')
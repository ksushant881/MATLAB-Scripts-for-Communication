x = [1, 2, 3, -1];
N = length(x);
X = zeros(N, 1);
for k=0:N-1
for n=0:N-1
X(k+1) = X(k+1) + x(n+1)*exp(-j * 2*pi * k * n/N);
end
end
disp(X)
subplot(3, 1, 1);
stem([0:N-1], x);
ylabel('Amplitude');
xlabel('Time');
subplot(3, 1, 2);
stem([0:N-1], abs(X));
ylabel('Frequency ');
xlabel('Discrete Frequency');
subplot(3, 1, 3);
stem([0:N-1], angle(X));
ylabel('Phase response');
xlabel('Discrete Frequency');
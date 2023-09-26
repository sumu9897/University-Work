%20-42954-1
clc
clear all
close all
A= 2;
B= 0;
C= 4;
D= 2;
E= 9;
F= 5;
G= 4;
H= 1;

a1= F+1;
a2= F+3;
a3= F+2;
a4= F+4;

f1= G+5;
f2= G+7;
f3= G+1;
f4= G+2;

time_duration = 0.2;

%Analog-like signal's representation
%Analog signal generation is not possible in MATLAB
a = [a1 a2 a3 a4]; % amplitude array for composite signal
f = [f1 f2 f3 f4]; % frequency array for composite signal
analog_t = 0:0.0001:time_duration;
analog_sig = a(1)*sin(2*pi*f(1)*analog_t) + a(2)*cos(2*pi*f(2)*analog_t) + a(3)*sin(2*pi*f(3)*analog_t)+ a(4)*sin(2*pi*f(4)*analog_t);
figure
subplot(1,2,1)
plot(analog_t, analog_sig,'linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title('analog signal')

%%Sampling Frequency
fs = 300;
ts = 1/fs;

%%Sampling
samp_t = 0:1/fs:time_duration;
samp_sig = a(1)*sin(2*pi*f(1)*samp_t) + a(2)*cos(2*pi*f(2)*samp_t) + a(3)*sin(2*pi*f(3)*samp_t + pi/4);
subplot(1,2,2)
plot(samp_t, samp_sig,'o','linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title(['sampled signal for ',num2str(fs),' Hz sampling frequency'])

% Levels for Quantization
L = 16;

%%Quantizing
delta = (max(samp_sig) - min(samp_sig))/(L-1); % step size
quant_sig = min(samp_sig) + round((samp_sig-min(samp_sig))/delta)*delta; % quantized signal
figure
subplot(1,2,1)
plot(samp_t, samp_sig,'o','linewidth',1.5)
grid on
xlabel('time in seconds')
ylabel('amplitude in volts')
title('sampled signal')
subplot(1,2,2)
plot(samp_t, quant_sig,'x','linewidth',1.5);
grid on
xlabel('time')
ylabel('amplitude')
title('quantized samples')

%%Number of Bits/Sample
nb = log2(L)
bandwidth=150;
data_rate=fs*nb% Data Rate Calculation
SNR_thy=6.02*nb+1.76 %6.02*nb+1.76 
SNR=10^(SNR_thy/10)%SNR Calculation
max_cap=bandwidth*log2(1+SNR)

i = round((quant_sig-min(quant_sig))/delta);% index for encoding
dig_data_matrix = dec2bin(i,nb); % encoded binary bits are as a matrix here
dig_data = reshape(dig_data_matrix',1,[]); % encoded binary bits are as an array here
disp(['The index values for encoding from quantization of the sampled signal are: ',num2str(i)])
disp(['The converted bits from the input analog signal are:',num2str(dig_data)])

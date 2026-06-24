clear all;
close all;
clc;
%%
load Res_signal_sorted_ncontrast.mat

% wform = Res_Signal_u;
x= double(Res_Signal);
% x= double(Res_Signal_u(:,1));
% x =double(wform' + 0.25*randn(11,100));
d = designfilt('lowpassfir', ...
'PassbandFrequency',0.1,'StopbandFrequency',0.5, ...
'PassbandRipple',1,'StopbandAttenuation',200, ...
'DesignMethod','equiripple');
y = filtfilt(d,x);
% y1 = filter(d,x);
% subplot(2,1,1)
% plot([y y1])
....
% hold on
plot(y)
title('Filtered Waveforms')
hold on
plot(x)
legend('Filtered Waveform','Original Waveform')
% hold on
% subplot(2,1,2)
% plot(x)
% title('Original Waveform')
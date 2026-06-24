clear all;
close all;
clc;
%%
load croped_heart_dat_mehmood;
kdata=sos(sos(ifft2c(kdata)));
kdata=flipud(fliplr(kdata));
load LplusS2;
load LplusS1;
N=256;
figure, plot(1:N(1), abs(kdata(end/2,:)),'-k',1:N(1), abs(LplusS2(end/2,:)),'--b',1:N(1), abs(LplusS1(end/2,:)),'r','LineWidth',1.5);
legend('Reference','Wavelet','Temporal transform');
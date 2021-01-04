% This function merges all sequence signals into one sequence respect to discrete time domain

% Read data from wav file 
%{
[y1, Fs1] = audioread('test1.wav');
[y2, Fs2] = audioread('test2.wav');
[y3, Fs3] = audioread('test3.wav');
[y4, Fs4] = audioread('test4.wav');
[y5, Fs5] = audioread('test5.wav');
[y6, Fs6] = audioread('test6.wav');
[y7, Fs7] = audioread('test7.wav');
[y8, Fs8] = audioread('test8.wav');
[y9, Fs9] = audioread('test9.wav');
[y10, Fs10] = audioread('test10.wav');
[y11, Fs11] = audioread('test11.wav');
[y12, Fs12] = audioread('test12.wav');
[y13, Fs13] = audioread('test13.wav');
%}
[y1, Fs1] = audioread('FrontPiano.wav');
[y2, Fs2] = audioread('FrontViola.wav');
[y3, Fs3] = audioread('LeftViolin1.wav');
[y4, Fs4] = audioread('LeftViolin2.wav');
[y5, Fs5] = audioread('RightCello1.wav');
[y6, Fs6] = audioread('RightCello2.wav');

% Merge all
yT = (y1+y2+y3+y4+y5+y6)/sqrt(6);

% data to wav file 
filename = 'Sixtet1.wav';
audiowrite(filename, yT, Fs1);
% clear(y, Fs);
% sound(y, Fs);

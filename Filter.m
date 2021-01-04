% Nfft = 128;
% [h, f] = freqz(data, 1, Nfft, fs);
% semilogx(f,mag2db(abs(h)))

% Read song data from wav file 
filename = 'Cello1.wav';
[y, Fs] = audioread(filename);

% Stereo 
yL = y(:, 1);
yR = y(:, 2);

% Read impulse response of given direction HRTF
Left = 'L30e042a.wav';
Right = 'R30e042a.wav';

[IRL, fsL] = audioread(Left);
[IRR, fsR] = audioread(Right);

% Convolution 
yL = conv(IRL, yL);
yR = conv(IRR, yR);
y = [yL yR];

% data to wav file 
filename = 'RightCello1.wav';
audiowrite(filename, y, Fs);
% clear(y, Fs);
% sound(y, Fs);










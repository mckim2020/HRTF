% This function works as a filter that convolutes impulse reponse of HRTF(KEMAR) and input signal 

% Read song data from wav file 
filename = 'InstrumentSound.wav';
[y, Fs] = audioread(filename); % Note that Fs here, fsL, and fsR has to be identical for precise convolution 

% Stereo: y is n by 2 double type data
yL = y(:, 1);
yR = y(:, 2);

% Read impulse response of given direction HRTF
% wav files from MIT KEMAR research, 1994
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
clear(y, Fs); % Clear method may not operate well for stereo data, 512 by 2 double datatype for instance
sound(y, Fs);


% In case of FFT needed in order to convert into frequency domain
% Nfft = 128;
% [h, f] = freqz(data, 1, Nfft, fs);
% semilogx(f,mag2db(abs(h)))








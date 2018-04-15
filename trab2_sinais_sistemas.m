clear all
clf
clc

% a > 1 -> Compression
% a < 1 -> Expansion
a = 1;

info = audioinfo('audio.mp3')

[y,Fs] = audioread('audio.mp3');

sound(y,a*Fs)

% t = 0:seconds(1/a*Fs):seconds(info.Duration);
% t = t(1:end-1);

 for i = 1 : length(y)
     t(i) = (i-1)/(a*Fs);
 end

plot(t,y)
xlabel('Time')
ylabel('Audio Signal')


%write a program to draw histogram of an image

clc;
clear all;
close all;

Oi = imread('img/apple.jpg');
Oi = rgb2gray(Oi);
subplot(121); imshow(Oi); title('Orginal Image');

freq = zeros(1,256);
[row col] = size(Oi);

for i = 1:row;
    for j = 1:col;
        freq(Oi(i,j)+1) = freq(Oi(i,j)+1)+1;
    end;
end;

subplot(122); stem(freq); title('Histogram of the Image');
grid on;
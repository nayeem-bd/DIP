%write a program to apply smoothing filter on an image
clc;
clear all;
close all;

Oi = imread('img/apple.jpg');
Oi = rgb2gray(Oi);
subplot(121); imshow(Oi); title('Orginal Image');

% 3x3 Averaging Filter

[row col] = size(Oi);
new_im = zeros(row,col);

for i = 2:row-1;
    tmp = 0;
    for j = 2:col-1;
        tmp = sum(Oi(i-1:i+1,j-1:j+1));
        new_im(i,j) = sum(tmp(:))/9;
    end;
end;

subplot(122); imshow(uint8(new_im)); title('Smooth Image');

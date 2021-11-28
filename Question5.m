%write a program to see the effect of log transformation of an image

clc;
clear all;
close all;

Oi = imread('img/einstein.jpg');
Oi = im2double(Oi);
subplot(221); imshow(Oi); title('Orginal Image');

c = 1;
Lt = c*log(Oi+1);
subplot(222); imshow(Lt); title('C = 1');

c = 2;
Lt = c*log(Oi+1);
subplot(223); imshow(Lt); title('C = 2');

c = 3;
Lt = c*log(Oi+1);
subplot(224); imshow(Lt); title('C = 3');

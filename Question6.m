%write a program for gamma correction of an image

clc;
clear all;
close all;

Oi = imread('img/einstein.jpg');
Oi = im2double(Oi);
subplot(221); imshow(Oi); title('Orginal Image');

c = 1;
gamma = 0.5;
Lt = c*Oi.^gamma;
subplot(222); imshow(Lt); title('Gamma = 0.5');

gamma = 1;
Lt = c*Oi.^gamma;
subplot(223); imshow(Lt); title('Gamma = 1');

gamma = 1.5;
Lt = c*Oi.^gamma;
subplot(224); imshow(Lt); title('Gamma = 1.5');

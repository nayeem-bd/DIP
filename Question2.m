%write a program to add or subtract two image

clc;
clear all;
close all;

Im1 = imread('img/car.jpeg');
Im2 = imread('img/car2.jpg');

Im1 = imresize(Im1,[255 255]);
Im2 = imresize(Im2,[255 255]);


Ai = Im1 + Im2;
subplot(121); imshow(Ai); title('Added Image');

Si = Im1 - Im2;
subplot(122); imshow(Si); title('Subtract Image');


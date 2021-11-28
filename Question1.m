%write a program to negative an image

clc;
clear all;
close all;

Oi = imread('img/car.jpeg');

l = 2^8;

Ni = (l-1)-Oi;

subplot(121); imshow(Oi); title('Orginal Image');
subplot(122); imshow(Ni); title('Negative Image');

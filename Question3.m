%write a program for bit plane slicing of 8 bit images

clc;
clear all;
close all;

Oi = imread('img/cameraman.jpg');

[r c z] = size(Oi);
if z==3;
    Oi = rgb2gray(Oi);
end;
Di = double(Oi);

%Calculation of bit plane slicing
c1 = mod(Di,2);
c2 = mod(floor(Di/2),2);
c3 = mod(floor(Di/4),2);
c4 = mod(floor(Di/8),2);
c5 = mod(floor(Di/16),2);
c6 = mod(floor(Di/32),2);
c7 = mod(floor(Di/64),2);
c8 = mod(floor(Di/128),2);

%show all images
subplot(251); imshow(Oi); title('Orginal Image');
subplot(252); imshow(c1); title('Bit Plane 1');
subplot(253); imshow(c2); title('Bit Plane 2');
subplot(254); imshow(c3); title('Bit Plane 3');
subplot(255); imshow(c4); title('Bit Plane 4');
subplot(256); imshow(c5); title('Bit Plane 5');
subplot(257); imshow(c6); title('Bit Plane 6');
subplot(258); imshow(c7); title('Bit Plane 7');
subplot(259); imshow(c8); title('Bit Plane 8');


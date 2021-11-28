%write a program to Convert into Gray level and then to convert into monochrome

clc;
clear all;
close all;

Oi = imread('img/apple.jpg');
subplot(131); imshow(Oi); title('Orginal Image');

%Gray level using luminosity/weighted method

Gi = 0.3*Oi(:,:,1) + 0.59*Oi(:,:,2) + 0.11*Oi(:,:,3);

subplot(132); imshow(Gi); title('Gray level Image');

%Monochrome / Binary Image

[row col] = size(Gi);
Gi = double(Gi);

summ = 0;
for i = 1:row;
    for j = 1:col;
        summ = summ + Gi(i,j);
    end;
end;
threshold = summ/(row*col);

for i = 1:row;
    for j = 1:col;
        if Gi(i,j) >= threshold ;
            Bi(i,j) = 1;
        else 
            Bi(i,j) = 0;
        end;
    end;
end;

subplot(133); imshow(Bi); title('Binary Image');
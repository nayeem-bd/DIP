%write a program for image zooming and shrinking
clc;
clear all;
close all;

Oi = imread('img/apple.jpg');
%Oi = rgb2gray(Oi);
subplot(221); imshow(Oi); title('Orginal Image'); axis on;

[row col d] = size(Oi);
zoom_f = 2;
zr = row*zoom_f;
zc = col*zoom_f;

for i = 1:zr;
    x = ceil(i/zoom_f);
    for j = 1:zc;
        y = ceil(j/zoom_f);
        Zi(i,j,:) =  Oi(x,y,:);
    end;
end;

subplot(222); imshow(Zi); title('Zooming by factor 2'); axis on;

shrink_f = 2.5;
sr = row/shrink_f;
sc = col/shrink_f;

for i = 1:sr;
    x = ceil(i*shrink_f);
    for j = 1:sc;
        y = ceil(j*shrink_f);
        Si(i,j,:) = Oi(x,y,:);
    end;
end;

subplot(223); imshow(Si); title('Shrinking by factor 2'); axis on;


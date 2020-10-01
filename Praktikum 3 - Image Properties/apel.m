%untuk menutup figure yang sedang aktif
close all

img = imread('bangunan.png');
igray = rgb2gray(img);
imshow(img);
figure, imshow(igray);
figure, imshow(igray,[]);
figure, imshow(igray,[50,80]);
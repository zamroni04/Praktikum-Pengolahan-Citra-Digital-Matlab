close all; clc; clear;

img = imread('mikro rgb.jpg');
igray = rgb2gray(img);

disp('size img :')
disp(size(img))
disp('size igray :')
disp(size(igray))

[jum_baris, jum_kolom] = size(img);
sprintf('Jumlah baris : %d',jum_baris)
sprintf('Jumlah kolom : %d',jum_kolom)

figure('Name','Origin Image'), imshow(img);
figure('Name','Grayscale Image'), imshow(igray);
figure('Name','Show image using imagesc'), imagesc(img);

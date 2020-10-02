close all; clc; clear;
gambar1 = imread('aadc.jpg');
imfinfo('aadc.jpg')
imtool(gambar1)

figure('Name','imagesc, imshow')
ax1 = subplot(1,2,1); imagesc(gambar1);
ax2 = subplot(1,2,2); imshow(gambar1);

R = gambar1(:,:,1);
G = gambar1(:,:,2);
B = gambar1(:,:,3);

figure('Name','Subplot RGB v1')
ax1 = subplot(2,2,1); imshow(gambar1);
ax2 = subplot(2,2,2); imshow(R); 
ax3 = subplot(2,2,3); imshow(G); 
ax4 = subplot(2,2,4); imshow(B); 

a = zeros(size(gambar1, 1), size(gambar1, 2));
redOnly = cat(3, R, a, a);
greenOnly = cat(3, a, G, a);
blueOnly = cat(3, a, a, B);

figure('Name','Subplot RGB v2')
ax1 = subplot(2,2,1); imshow(gambar1);
ax2 = subplot(2,2,2); imshow(redOnly); 
ax3 = subplot(2,2,3); imshow(greenOnly); 
ax4 = subplot(2,2,4); imshow(blueOnly); 

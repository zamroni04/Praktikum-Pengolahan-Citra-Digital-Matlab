clc; clear all;
rgb = imread('office_6.jpg');
batik = rgb2gray(rgb);

[G0, G45, G90, G135] = glcm(batik)

figure('Name','Plot Citra')
ax1 = subplot(1,2,1);imshow(rgb);title('Citra Input');
ax2 = subplot(1,2,2);imshow(batik);title('Citra Grayscale');

clc; clear; clf;
img=imread('cameraman.tif');
subplot(1,2,1); imshow(img); title('Citra A');
subplot(1,2,2); histoManual(img); title('Histogram Citra A');
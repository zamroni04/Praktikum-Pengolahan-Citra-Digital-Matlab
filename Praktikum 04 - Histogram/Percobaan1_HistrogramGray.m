clc; clear; clf;
img=imread('cameraman.tif');

subplot(1,2,1); imshow(img);
subplot(1,2,2); imhist(img);

close all; clc; clear;

img = imread('mikro rgb.jpg');
keabuan = uint8(0.2989 * double(img(:,:,1)) + 0.5870*double(img(:,:,2)) + 0.1141 * double(img(:,:,3))); 

%imwrite(keabuan,'hasil gray manual.jpg')

subplot(1,2,1); imshow(img); title('Citra RGB')
subplot(1,2,2); imshow(keabuan); title('Citra Grayscale')
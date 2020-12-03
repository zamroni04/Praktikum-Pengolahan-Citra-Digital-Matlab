clc; clear;clf;

input = imread('cameraman.tif');
output = histeq(input);

subplot(2,2,1); imshow(input); title('Citra Awal');
subplot(2,2,2); imhist(input); title('Histogram Citra Awal');

subplot(2,2,3); imshow(output); title('Citra Hasil Ekualisasi');
subplot(2,2,4); imhist(output); title('Histogram Citra Ekualisasi');
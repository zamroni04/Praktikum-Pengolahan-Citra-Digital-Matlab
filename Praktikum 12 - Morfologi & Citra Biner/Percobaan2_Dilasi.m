clc; clear; clf; close all;

input = imread('bravo.png'); 
blackWhite = im2bw(input, 0.5); 

H1 = ones(4); 
output1 = dilasi(blackWhite, H1); 

H2 = ones(7); 
output2 = dilasi(blackWhite, H2); 

subplot(2,2,1);imshow(input);title('Citra Input');
subplot(2,2,2);imshow(blackWhite);title('Citra Black White');
subplot(2,2,3);imshow(output1);title('Citra Output 1');
subplot(2,2,4);imshow(output2);title('Citra Output 2');
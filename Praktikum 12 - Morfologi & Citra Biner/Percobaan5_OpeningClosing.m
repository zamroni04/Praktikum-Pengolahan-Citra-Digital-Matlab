clc; clear; clf; close all;

img = imread('struktur.png'); 
blackWhite = im2bw(img, 0.1); 

H = getnhood(strel('disk', 5));
erosiOutput = erosi(blackWhite, H); 

openingOutput = dilasi(erosi(blackWhite, H), H);
closingOutput = erosi(dilasi(blackWhite, H), H);

subplot(2,2,1);imshow(img);title('Citra Input');
subplot(2,2,2);imshow(erosiOutput);title('Citra Erosi Strel');
subplot(2,2,3);imshow(openingOutput);title('Citra Opening');
subplot(2,2,4);imshow(closingOutput);title('Citra Closing');

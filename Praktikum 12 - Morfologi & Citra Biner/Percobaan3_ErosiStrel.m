clc; clear; clf; close all;

input = imread('struktur.png'); 
blackWhite = im2bw(input, 0.1); 

H1 = getnhood(strel('disk', 10));
H2 = getnhood(strel('disk', 8));
H3 = getnhood(strel('disk', 6));

output1 = erosi(blackWhite, H3); 
output2 = erosi(blackWhite, H2); 
output3 = erosi(blackWhite, H1); 


subplot(2,2,1);imshow(input);title('Input');
subplot(2,2,2);imshow(output1);title('Output Strel (H1)');
subplot(2,2,3);imshow(output2);title('Output Strel (H2)');
subplot(2,2,4);imshow(output3);title('Output Strel (H3)');
clc; clear; clf; close all;

input = imread('dedaunan.png'); 
blackWhite = im2bw(input, 0.1); 

H1 = ones(4); 
output1 = erosi(blackWhite, H1); 

H2 = ones(6); 
output2 = erosi(blackWhite, H2); 
 
blackWhite = not(blackWhite); 
G = erosi(blackWhite, H2); 
output3 = blackWhite - G; 
imshow(output3);

subplot(2,2,1);imshow(input);title('Input');
subplot(2,2,2);imshow(output1);title('Output (H1)');
subplot(2,2,3);imshow(output2);title('Output (H2)');
subplot(2,2,4);imshow(output3);title('Output (Not)');
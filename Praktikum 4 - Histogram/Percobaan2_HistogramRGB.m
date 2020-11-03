clc; clear; clf;
gambar1 = imread('yellowlily.jpg');

R = gambar1(:,:,1);
G = gambar1(:,:,2); 
B = gambar1(:,:,3) ;

subplot(3,3,4); imshow(gambar1); title('Citra Asal');
subplot(3,3,2); imshow(R); title('Citra Layer 1 (R)');
subplot(3,3,3); imhist(R); title('Histogram 1 (R)');
subplot(3,3,5); imshow(G); title('Citra Layer 2 (G)');
subplot(3,3,6); imhist(G); title('Histogram 2 (G)');
subplot(3,3,8); imshow(B); title('Citra Layer 3 (B)');
subplot(3,3,9); imhist(B); title('Histogram 3 (B)');
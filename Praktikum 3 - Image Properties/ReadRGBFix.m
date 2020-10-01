gambar1 = imread('aadc.jpg');

R = gambar1(:,:,1)
G = gambar1(:,:,2) 
B = gambar1(:,:,3) 
a = zeros(size(gambar1, 1), size(gambar1, 2));

just_red = cat(3, R, a, a);
just_green = cat(3, a, G, a);
just_blue = cat(3, a, a, B);

subplot(2,2,1); imshow(gambar1);
subplot(2,2,2); imshow(R); 
subplot(2,2,3); imshow(G); 
subplot(2,2,4); imshow(B); 
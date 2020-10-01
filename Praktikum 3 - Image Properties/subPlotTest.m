gambar1 = imread('apel-merah16.jpg');
gray = rgb2gray(gambar1);
binImg = im2bw(gambar1,0.5);

disp('rgb : ');
disp(gambar1);
disp('gray : ');
disp(gray);
disp('binary : ');
disp(binImg);

subplot(1,3,1); imshow(gambar1);
subplot(1,3,2); imshow(gray);
subplot(1,3,3); imshow(binImg);
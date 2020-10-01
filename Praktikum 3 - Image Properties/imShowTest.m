gambar1 = imread('apel-merah16.jpg');
gray = rgb2gray(gambar1);
binImg = im2bw(gambar1,0.5);

disp('rgb : ');
disp(gambar1);
disp('gray : ');
disp(gray);
disp('binary : ');
disp(binImg);

figure, imshow(gambar1);
figure, imshow(gray);
figure, imshow(binImg);
gambar1 = imread('apel-merah16.jpg');
gray = rgb2gray(gambar1);
binImg = im2bw(gambar1,0.5);

R = gambar1(:,:,1);
mr1 = mean(mean(R));
mr2 = 1/mr1;
mr3 = mr2';
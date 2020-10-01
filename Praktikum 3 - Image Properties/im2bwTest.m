rgb = imread('doraemon rgb.jpg');
binImg = im2bw(rgb,0.5);
gray = rgb2gray(rgb);

% imwrite(binImg, 'hijab kartun binary.jpg');
imwrite(gray, 'doraemon gray.jpg');
figure, imshow(binImg)
figure, imshow(gray)

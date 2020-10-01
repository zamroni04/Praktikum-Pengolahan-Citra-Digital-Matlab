img = imread('bangunan.png');
igray = rgb2gray(img);
imwrite(igray, 'bangunan gray1.png');
imshow('bangunan gray1.png');

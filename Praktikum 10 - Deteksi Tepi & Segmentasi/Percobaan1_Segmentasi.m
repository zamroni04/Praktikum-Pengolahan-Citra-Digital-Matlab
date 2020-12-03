clc; clear all; clf;

img = imread('cameraman.tif');

robertsSegmentasi = roberts(img);
prewittSegmentasi = prewitt(img);
sobelSegmentasi = sobel(img);

kompasPrewitt= kompas(img,1);
kompasKirsch= kompas(img,2);
kompasRobinson3= kompas(img,3);
kompasRobinson4= kompas(img,4);

figure('Name','Plot Citra 1')
subplot(2,4,1);imshow(img);title('Citra Input');
subplot(2,4,2);imshow(robertsSegmentasi);title('Output Roberts');
subplot(2,4,3);imshow(prewittSegmentasi);title('Output Prewitt');
subplot(2,4,4);imshow(sobelSegmentasi);title('Output Sobel');
subplot(2,4,5);imhist(img);title('Histogram Citra Input');
subplot(2,4,6);imhist(robertsSegmentasi);title('Histogram Citra Output Roberts');
subplot(2,4,7);imhist(prewittSegmentasi);title('Histogram Citra Output Prewitt');
subplot(2,4,8);imhist(sobelSegmentasi);title('Histogram Citra Output Sobel');


figure('Name','Plot Citra 2')
subplot(2,4,1);imshow(kompasPrewitt);title('Output Kompas Prewit');
subplot(2,4,2);imshow(kompasKirsch);title('Output Kompas Kirsch');
subplot(2,4,3);imshow(kompasRobinson3);title('Output Kompas Robinson 3');
subplot(2,4,4);imshow(kompasRobinson4);title('Output Kompas Robinson 4');
subplot(2,4,5);imhist(kompasPrewitt);title('Histogram Citra Output Kompas Prewit');
subplot(2,4,6);imhist(kompasKirsch);title('Histogram Citra Output Kompas Kirsch');
subplot(2,4,7);imhist(kompasRobinson3);title('Histogram Citra Output Kompas Robinson 3');
subplot(2,4,8);imhist(kompasRobinson4);title('Histogram Citra Output Kompas Robinson 4');
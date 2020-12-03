clc; clear; clf;
input = imread('mikro gray.jpg');

kernel1 = [-1 0 0; 0 0 0; 0 0 -1];
kernel2 = [1 0 0; 0 0 0; 0 0 -1];
kernel3 = [0 0 0; -4 0 -4; 0 0 0];

output1 = uint8(konvolusi(input, kernel1));
output2  = uint8(konvolusi(input, kernel2));
output3 = uint8(konvolusi(input, kernel3));

figure('Name','Plot Citra')
ax1 = subplot(2,2,1);imshow(input);title('Citra Input');
ax2 = subplot(2,2,2);imshow(output1);title('Output Embos Filter Kernel 1');
ax3 = subplot(2,2,3);imshow(output2);title('Output Embos Filter Kernel 2');
ax4 = subplot(2,2,4);imshow(output3);title('Output Embos Filter Kernel 3');

figure('Name','Histogram Citra')
ax1 = subplot(5,1,1);imhist(input);title('Histogram Citra Input');
ax2 = subplot(5,1,2);imhist(output1);title('Histogram Embos Filter Kernel 1');
ax3 = subplot(5,1,3);imhist(output2);title('Histogram Embos Filter Kernel 2');
ax4 = subplot(5,1,4);imhist(output3);title('Histogram Embos Filter Kernel 3');

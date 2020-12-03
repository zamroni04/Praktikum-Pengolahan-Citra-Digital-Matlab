clc; clear; clf;
input = imread('mikro gray.jpg');

kernel1 = [1 1 1; 1 1 1; 1 1 1]/9;
kernel2 = [0 1 0; 1 2 1; 0 1 0]/6;
kernel3 = [1 1 1; 1 2 1; 1 1 1]/10;
kernel4 = [1 2 1; 2 4 2; 1 2 1]/16;

output1 = uint8(konvolusi(input, kernel1));
output2 = uint8(konvolusi(input, kernel2));
output3 = uint8(konvolusi(input, kernel3));
output4 = uint8(konvolusi(input, kernel4));

figure('Name','Plot Citra')
ax1 = subplot(2,3,1);imshow(input);title('Citra Input');
ax2 = subplot(2,3,2);imshow(output1);title('Output LPF Kernel 1');
ax3 = subplot(2,3,3);imshow(output2);title('Output LPF Kernel 2');
ax4 = subplot(2,3,4);imshow(output3);title('Output LPF Kernel 3');
ax5 = subplot(2,3,5);imshow(output4);title('Output LPF Kernel 4');

figure('Name','Histogram Citra')
ax1 = subplot(5,1,1);imhist(input);title('Histogram Citra Input');
ax2 = subplot(5,1,2);imhist(output1);title('Histogram LPF Kernel 1');
ax3 = subplot(5,1,3);imhist(output2);title('Histogram LPF Kernel 2');
ax4 = subplot(5,1,4);imhist(output3);title('Histogram LPF Kernel 3');
ax5 = subplot(5,1,5);imhist(output4);title('Histogram LPF Kernel 4');




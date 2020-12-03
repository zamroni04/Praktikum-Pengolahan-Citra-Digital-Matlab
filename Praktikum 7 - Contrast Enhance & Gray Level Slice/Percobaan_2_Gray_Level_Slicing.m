% Matlab program to demonstrate the concept of "Gray Level Slicing or
% Intensity Slicing". This program depends on image histogram.
% Source https://www.mathworks.com/matlabcentral/fileexchange/53171-gray-level-slicing

clc; clear all; close all;
a = imread('aadc.jpg'); 

% converting the above color image into a gray level image
b = rgb2gray(a);

% calling the image size 
[m,n] = size(b);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Note: Observe the "white colored stiches" on the "foot ball image" and
% corresponding "pixel intensities" in the histogram, we found that, white
% gray level pixels will be in the range from 240 to 255 therefore by using
% gray level slicing from 240 i.e., if the image intensity is greater than
% or equal to 240 make it equal to 255, else make it equal to 0 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% initialing a null two dimentional array "c" with size equal to input imag
% using matlab command "zeros"
c = zeros(m,n);

% initialing the for loop
for i = 1:m
    for j = 1:n
        % use the condition 
        if b(i,j) >= 227  % try with defferent intensity levels in the range from 227 to 245 for better understanding
            c(i,j) = 255;
        else
            c(i,j) = 0;
        end
    end
end
% end of for loop
% here the logic is completed for "gray level" or "Intensity" Slicing
% Now showing the result 
% Here you will observe an excellent result and it will be very useful for
% the class room display 

% Modified by Zamroni Ilyas, Universitas Muhammadiyah Jember, Indonesia.
figure('Name','Gray Level Slicing Example')
ax1 = subplot(2,2,1); imshow(b); title('Citra Input Grayscale')
ax2 = subplot(2,2,2); imhist(b); title('Histogram Input Grayscale')
ax3 = subplot(2,2,3); imshow(c); title('Citra Output Grayscale Level Slicing')
ax4 = subplot(2,2,4); imhist(c); title('Histogram Output Grayscale Level Slicing')
% End of Modified

% hope you enjoyed the program please dont forget to give rating to my
% program and comments. for any questions please contact me at :
% samudrala.naren@gmail.com 

% S Jagadeesh, 
% Asst. Prof., Dept. of ECE, Aditya Engineering College, Surampalem, East
% Godavari Dist., Andhra Pradeh State, India. 

        
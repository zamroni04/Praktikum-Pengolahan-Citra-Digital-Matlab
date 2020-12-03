clear; clc;
inputA=imread('cameraman.tif'); 
inputA_Selection=inputA((1:200),(1:200));

inputB=imread('rice.png');
inputB_Selection=inputB((1:200),(1:200));

outputC=inputA_Selection+inputB_Selection;

subplot(1,3,1);imshow(inputA);title('INPUT A');
subplot(1,3,2);imshow(inputB);title('INPUT B');
subplot(1,3,3);imshow(outputC);title('OUTPUT A+B');
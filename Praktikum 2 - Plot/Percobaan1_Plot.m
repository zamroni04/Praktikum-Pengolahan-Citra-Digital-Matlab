close all; clc; clear;

matrix1=[10 30 21 52; 34 67 12 23; 90, 23, 45, 26; 58 94 30 20];
x=[10 20 45 50];
disp(matrix1)
disp(x)

figure('Name','Pie 3D'), pie(x, {'A', 'B', 'C', 'D'}) 
figure('Name','Pie 2D'), pie3(x, {'A', 'B', 'C', 'D'})
figure('Name','Bar 3D'), bar3(matrix1), grid on 
figure('Name','Bar 2D'), bar(matrix1), grid on 

x=-10:10;
y=x.^2;
figure('Name','Plot 2D'), plot(x,y), grid on

t=0:pi/100:10*pi;
st = sin(2*t);
ct = cos(2*t);
figure('Name','Plot 3D'), plot3(st, ct, t), grid on
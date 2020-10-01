%lapangan = imread('lapangan.tif');
%bangunan = imread('bangunan.png');
a=[10 30 21 52; 34 67 12 23; 90, 23, 45, 26; 58 94 30 20];
%bar3(t)
%grid on 

t=0:pi/100:10*pi;
st = sin(2*t);
ct = cos(2*t);
   
%grid on

figure, bar3(a);
figure, plot3(st, ct, t);
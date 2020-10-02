%plot 3d
t=0:pi/100:10*pi;
st = sin(2*t);
ct = cos(2*t);
grid on

%pie 2d
x=[10 20 45 25];

subplot(1,2,1); pie(x, {'Nasi Goreng', 'Mie Ayam', 'C', 'D'});
subplot(1,2,2); plot3(st, ct, t), grid on;  

%untuk menutup figure yang sedang aktif
%close all
clc %untuk membersihkan tulisan di command window
clear %untuk membersihkan variable di workspace

%input dari keyboard
a=input('masukkan konstanta a=');
b=input('masukkan konstanta b=');
c=input('masukkan konstanta c=');

%proses perhitungan akar
x1=(-b + sqrt(b^2-4*a*c))/2*a
x2=(-b - sqrt(b^2-4*a*c))/2*a

%mencoba function
x3=Percobaan5_cobaFunction(a,b)
disp(x3)
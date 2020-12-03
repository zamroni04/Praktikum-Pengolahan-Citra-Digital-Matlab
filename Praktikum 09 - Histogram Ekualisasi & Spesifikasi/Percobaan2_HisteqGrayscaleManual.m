clc; clear; clf;
% EKUALISASI Contoh untuk melakukan ekualisasi histogram

img = imread('cameraman.tif');
[jum_baris, jum_kolom] = size(img);

L = 256;
Histog = zeros(L, 1);
for baris=1 : jum_baris
    for kolom=1 : jum_kolom
        Histog(img(baris, kolom)+1) = Histog(img(baris, kolom)+1) + 1;
    end
end
 
alpha = (L-1) / (jum_baris * jum_kolom);
 
C(1) = alpha * Histog(1);
for i=1 : L-2
    C(i+1) = C(i) + round(alpha * Histog(i+1));
end
 
for baris=1 : jum_baris
    for kolom=1 : jum_kolom
        Hasil(baris, kolom) = C(img(baris, kolom));
        %disp(Hasil(baris, kolom))
    end
end
 
Hasil = uint8(Hasil);
subplot(2,2,1); imshow(img); title('Citra Awal');
subplot(2,2,2); imhist(img); title('Histogram Citra Awal');

subplot(2,2,3); imshow(Hasil); title('Citra Hasil Ekualisasi');
subplot(2,2,4); imhist(Hasil); title('Histogram Citra Ekualisasi');

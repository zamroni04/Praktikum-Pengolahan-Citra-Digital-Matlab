close all; clc; clear;

img = imread('mikro gray.jpg');
[tinggi, lebar] =  size(img);
 
ambang = 210; % Nilai ini bisa diubah-ubah
biner = zeros(tinggi, lebar);
for baris=1 : tinggi
    for kolom=1 : lebar
        if img(baris, kolom) >= ambang
           biner(baris, kolom) = 0;
        else
           biner(baris, kolom) = 1;
        end   
    end
end
    
subplot(1,2,1); imshow(img); title('Citra RGB')
subplot(1,2,2); imshow(biner); title('Citra Biner')
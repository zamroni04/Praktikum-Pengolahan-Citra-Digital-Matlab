clear; clc;
citraAwal=imread('cameraman.tif');
subplot(1,3,1);imshow(citraAwal); title('Citra awal');

[m n]=size(citraAwal);
for m=1:m % baris ke 1 hingga nilai variable m   
    for n=1:n % kolom ke 1 hingga nilai variable m
        input=double(citraAwal);
        negatifA(m,n)=255-input(m,n);
    end
end

negatifA=uint8(negatifA);
subplot(1,3,2);imshow(negatifA);title('Citra hasil');

negatifB = 255 - citraAwal;
subplot(1,3,3); imshow(negatifB);title('Citra hasil');




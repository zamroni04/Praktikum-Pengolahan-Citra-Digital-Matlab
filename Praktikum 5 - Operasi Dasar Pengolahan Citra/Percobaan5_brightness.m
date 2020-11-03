clear; clc;
citraAwal=imread('kids.tif');
subplot(1,3,1);imshow(citraAwal); title('Citra awal');

[m n]=size(citraAwal);
for m=1:255 % baris ke 1 s/d 255
    for n=1:255 % kolom ke 1 s/d 255
        input=double(citraAwal);
        brightnessA(m,n)=input(m,n)+100;
    end
end

brightnessA=uint8(brightnessA);
subplot(1,3,2);imshow(brightnessA);title('Citra hasil');

brightnessB = citraAwal + 60;
subplot(1,3,3);imshow(brightnessB);title('Citra hasil');



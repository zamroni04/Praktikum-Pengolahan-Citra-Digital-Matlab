clear; clc;
citraAwal=imread('cameraman.tif');
subplot(2,2,1); imshow(citraAwal); title('Citra awal');
subplot(2,2,2); imhist(citraAwal); title('Histogram Citra Awal');

[m n]=size(citraAwal);
for m=1:256 % baris ke 1 s/d 255
    for n=1:256 % kolom ke 1 s/d 255
        citraAwal=double(citraAwal);
        outputA(m,n)=citraAwal(m,n)*1.9;        
    end
end

outputA=uint8(outputA);
subplot(2,2,3); imshow(outputA); title('Citra Output');
subplot(2,2,4); imhist(outputA); title('Histogram Citra Output');

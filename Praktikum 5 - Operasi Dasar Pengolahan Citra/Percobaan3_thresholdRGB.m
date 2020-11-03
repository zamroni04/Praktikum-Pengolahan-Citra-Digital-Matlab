clear; clc;
citraAsal=imread('onion.png');
subplot(1,3,1);imshow(citraAsal); title('Citra RGB');

citraGray=rgb2gray(citraAsal);
subplot(1,3,2);imshow(citraGray); title('Citra GRAY');

[m n]=size(citraGray);
for m=1:m % baris ke 1 s/d 255    
    for n=1:n% kolom ke 1 s/d 255        
        if citraGray(m,n)<=127;            
            citraAkhir(m,n)=0;
        elseif citraGray(m,n)>=128
            citraAkhir(m,n)=1;            
        end
    end
end
subplot(1,3,3);imshow(citraAkhir);title('Hasil Threshold');
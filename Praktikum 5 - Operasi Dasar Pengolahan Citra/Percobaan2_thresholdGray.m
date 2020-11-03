clear; clc;
citraAsal=imread('cameraman.tif');
subplot(1,2,1);imshow(citraAsal); title('Citra RGB');

[m n]=size(citraAsal);
for m=1:m % baris ke 1 s/d 255    
    for n=1:n% kolom ke 1 s/d 255        
        if citraAsal(m,n)<=127;            
            citraAkhir(m,n)=0;
        elseif citraAsal(m,n)>=128
            citraAkhir(m,n)=1;            
        end
    end
end
subplot(1,2,2);imshow(citraAkhir);title('Hasil Threshold');
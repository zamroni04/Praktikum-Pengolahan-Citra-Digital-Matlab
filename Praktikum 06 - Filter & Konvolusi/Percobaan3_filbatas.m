clear all; clc; clf;
F = imread('boneka2.tif');
[tinggi, lebar] = size(F);
G = F;

for baris=2 : tinggi-1
    for kolom=2 : lebar-1
        minPiksel = min([F(baris-1, kolom-1) F(baris-1, kolom) F(baris, kolom+1) ...
            F(baris, kolom-1) F(baris, kolom+1) F(baris+1, kolom-1)  ...
            F(baris+1, kolom) F(baris+1, kolom+1)]);
        
        maksPiksel = max([F(baris-1, kolom-1) F(baris-1, kolom) F(baris, kolom+1)    ...
            F(baris, kolom-1) F(baris, kolom+1) F(baris+1, kolom-1)  ...
            F(baris+1, kolom) F(baris+1, kolom+1)]);    
            
        if F(baris, kolom) < minPiksel
           G(baris, kolom) = minPiksel;
        else
            if F(baris, kolom) > maksPiksel
                G(baris, kolom) = maksPiksel;
            else
                G(baris, kolom) = F(baris, kolom);
            end
        end    
    end
end

subplot(1,2,1);imshow(F);title('Citra Asal');
subplot(1,2,2);imshow(G);title('Setelah difilter batas');
clear all; clc; clf;

%input citra mobil
inputMobil = imread('mobil.tif');
[tinggiA, lebarA] = size(inputMobil);

%input citra boneka2
inputBoneka = imread('boneka2.tif');
[tinggiB, lebarB] = size(inputBoneka);

%proses filter rerata untuk citra mobil
F2 = double(inputMobil);
for baris=2 : tinggiA-1
    for kolom=2 : lebarA-1
        jum = F2(baris-1, kolom-1)+ F2(baris-1, kolom) + F2(baris-1, kolom-1) + ...
              F2(baris, kolom-1) + F2(baris, kolom) + F2(baris, kolom+1) + ...
              F2(baris+1, kolom-1) + F2(baris+1, kolom) + F2(baris+1, kolom+1);         
         outputMobil(baris, kolom) = uint8(1/9 * jum);
    end
end

%proses filter rerata untuk citra boneka
F3 = double(inputBoneka);
for baris=2 : tinggiB-1
    for kolom=2 : lebarB-1
        jum = F3(baris-1, kolom-1)+ F3(baris-1, kolom) + F3(baris-1, kolom-1) + ...
              F3(baris, kolom-1) + F3(baris, kolom) + F3(baris, kolom+1) + ...
              F3(baris+1, kolom-1) + F3(baris+1, kolom) + F3(baris+1, kolom+1);         
         outputBoneka(baris, kolom) = uint8(1/9 * jum);
    end
end

%subplot citra input dan output
subplot(2,2,1);imshow(inputMobil);title('Citra Asal');
subplot(2,2,2);imshow(outputMobil);title('Setelah difilter rerata');
subplot(2,2,3);imshow(inputBoneka);title('Citra Asal');
subplot(2,2,4);imshow(outputBoneka);title('Setelah difilter rerata');

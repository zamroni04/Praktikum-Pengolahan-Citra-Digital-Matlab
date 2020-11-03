clear all; clc; clf;

%input citra mobil
inputMobil = imread('mobil.tif');
[tinggiA, lebarA] = size(inputMobil);

%input citra boneka2
inputBoneka = imread('boneka2.tif');
[tinggiB, lebarB] = size(inputBoneka);

%proses filter median untuk citra mobil
for baris=2 : tinggiA-1
    for kolom=2 : lebarA-1
        dataA = [inputMobil(baris-1, kolom-1) inputMobil(baris-1, kolom) inputMobil(baris-1, kolom+1)  ...
              inputMobil(baris, kolom-1) inputMobil(baris, kolom) inputMobil(baris, kolom+1)  ...
              inputMobil(baris+1, kolom-1) inputMobil(baris+1, kolom) inputMobil(baris+1, kolom+1)];
        % Urutkan
        for i=1 : 8
            for j=i+1 : 9
                if dataA(i) > dataA(j)
                    tmpA = dataA(i);
                    dataA(i) = dataA(j);
                    dataA(j) = tmpA;
                end
            end
        end      
        % Ambil nilai median
        outputMobil(baris, kolom) = dataA(5);
    end
end

%proses filter median untuk citra boneka
for baris=2 : tinggiB-1
    for kolom=2 : lebarB-1
        dataB = [inputBoneka(baris-1, kolom-1) inputBoneka(baris-1, kolom) inputBoneka(baris-1, kolom+1)  ...
              inputBoneka(baris, kolom-1) inputBoneka(baris, kolom) inputBoneka(baris, kolom+1)  ...
              inputBoneka(baris+1, kolom-1) inputBoneka(baris+1, kolom) inputBoneka(baris+1, kolom+1)];
        % Urutkan
        for i=1 : 8
            for j=i+1 : 9
                if dataB(i) > dataB(j)
                    tmpB = dataB(i);
                    dataB(i) = dataB(j);
                    dataB(j) = tmpB;
                end
            end
        end      
        % Ambil nilai median
        outputBoneka(baris, kolom) = dataB(5);
    end
end

%subplot citra input dan output
subplot(2,2,1);imshow(inputMobil);title('Citra Asal');
subplot(2,2,2);imshow(outputMobil);title('Setelah difilter median');
subplot(2,2,3);imshow(inputBoneka);title('Citra Asal');
subplot(2,2,4);imshow(outputBoneka);title('Setelah difilter median');
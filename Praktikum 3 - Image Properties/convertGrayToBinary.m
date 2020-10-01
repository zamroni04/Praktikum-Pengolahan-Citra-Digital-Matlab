img = imread('mikro gray.jpg');
[tinggi, lebar] =  size(img);
 
ambang = 210; % Nilai ini bisa diubah-ubah
biner = zeros(tinggi, lebar);
for baris=1 : tinggi
    for kolom=1 : lebar
        if img(baris, kolom) >= ambang
           Biner(baris, kolom) = 0;
        else
           Biner(baris, kolom) = 1;
        end   
    end
end
    
imshow(Biner);

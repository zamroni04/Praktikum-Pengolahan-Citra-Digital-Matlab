function [K] = canny(F, ambang_bawah, ambang_atas)
% Pemerolehan tepi objek pada citra F
%    melalui operator Canny
% Argumen:
%    ambang_bawah = batas bawah untuk ambang histeresis
%                   Nilai bawaan 011
%    ambang_atas = batas atas untuk ambang histeresis
%                   Nilai bawaan 0,3
% Hasil: citra G

% Menentukan nilai ambang bawaan
if nargin < 2
    ambang_bawah = 0.1;
end

if nargin < 2
    ambang_atas = 0.3;
end

% Kernel Gaussians
HG = [ 2  4  5  4  2
       4  9 12  9 12
       5 12 15 12  5
       4  9 12  9 12
       2  4  5  4  2 ] / 115.0;
[hHG, wHG] = size(HG);
h2 = floor(hHG / 2);
w2 = floor(wHG / 2);

% Kenakan operasi Gaussian
G = double(deteksi(F, HG, true));

% Pastikan hasilnya berada antara 0 sampai dengan 255
[m, n] = size(G);
for i = 1 : m
    for j = 1 : n
        G(i, j) = round(G(i, j));
         
        if G(i, j) > 255
            G(i, j) = 255;
        else
            if G(i, j) < 0
                G(i, j) = 0;
            end
        end
    end
end

% Kenakan perhitungan gradien dan arah tepi
Theta = zeros(m, n);
Grad = zeros(m, n);
for i = 1 : m-1
    for j = 1 : n-1
        gx = (G(i,j+1)-G(i,j) + ...
              G(i+1,j+1)-G(i+1,j)) / 2;
        gy = (G(i,j)-G(i+1,j) + ...
              G(i,j+1)-G(i+1,j+1)) / 2;  
        Grad(i, j) = sqrt(gx.^2 + gy.^2);  
        Theta(i,j) = atan2(gy, gx); 
    end
end

% Konversi arah tepi menjadi 0, 45, 90, atau 135 derajat
[r c] = size (Theta);

if Theta < 0
    Theta = Theta + pi; % Jangkauan menjadi 0 s/d pi
end

for i = 1 : r
    for j = 1 : c
        if (Theta(i,j) < pi/8 || Theta(i,j) >= 7/8*pi)
            Theta(i,j) = 0;
        elseif (Theta(i,j)>=pi/8 && Theta(i,j) < 3*pi/8 ) 
            Theta(i,j) = 45;
        elseif (Theta(i,j) >=3*pi/8 && Theta(i,j) < 5*pi/8 ) 
            Theta(i,j) = 90;
        else
            Theta(i,j) = 135;
        end
    end
end

% penghilangan non-maksimum
Non_max = Grad;

for i = 1+h2 : r-h2
    for j = 1+w2 : c-h2
        if Theta(i,j) == 0 
            if (Grad(i,j) <= Grad(i,j+1)) || ...
               (Grad(i,j)<= Grad(i,j-1))
                Non_max(i,j) = 0;
            end
        elseif Theta(i,j) == 45
            if (Grad(i,j) <= Grad(i-1,j+1)) || ...
               (Grad(i,j) <= Grad(i+1,j-1))
                Non_max(i,j) = 0;
            end
        elseif Theta(i,j) == 90
            if (Grad(i,j) <= Grad(i+1,j) ) || ...
               (Grad(i,j) <= Grad(i-1,j))
                Non_max(i,j) = 0;
            end
        else
            if (Grad(i,j) <= Grad(i+1,j+1)) || ...
               (Grad(i,j) <= Grad(i-1,j-1))
                Non_max(i,j) = 0;
            end
        end
    end
end

% Pengambangan histeresis
ambang_bawah = ambang_bawah * max(max(Non_max));
ambang_atas =  ambang_atas * max(max(Non_max));

Histeresis = Non_max;

% ----- Penentuan awal untuk memberikan nilai
% ----- 0, 128, dan 255
for i = 1+h2 : r-h2
    for j = 1+w2 : c-w2
        if (Histeresis(i,j) >= ambang_atas) 
            Histeresis(i,j) = 255;
        end
        
        if (Histeresis(i,j) < ambang_atas) && ...
           (Histeresis(i,j) >= ambang_bawah) 
            Histeresis(i,j)= 128;
        end
        
        if (Histeresis(i,j) < ambang_bawah) 
            Histeresis(i,j) = 0;
        end 
    end
end

% ----- Penggantian angka 128 menjadi 255
% ----- Berakhir kalau tidak ada lagi yang berubah
ulang = true;
while ulang
    ulang = false;
    for i = 1+h2 : r-h2
        for j = 1+w2 : c-w2
            if (Histeresis(i,j) == 128) 
                if (Histeresis(i-1, j-1) == 255) && ...
                   (Histeresis(i-1, j) == 255) && ...
                   (Histeresis(i, j+1) == 255) && ...
                   (Histeresis(i, j-1) == 255) && ...
                   (Histeresis(i, j+1) == 255) && ...
                   (Histeresis(i+1, j-1) == 255) && ...
                   (Histeresis(i+1, j) == 255) && ...
                   (Histeresis(i+1, j+1) == 255)
                    Histeresis(i,j) = 255;
                    
                    ulang = true;
                end
            end
        end    
    end
end

% ----- Penggantian angka 128 menjadi 0
% ----- untuk yang tersisa
for i = 1+h2 : r-h2
    for j = 1+w2 : c-w2
        if (Histeresis(i,j) == 128) 
            Histeresis(i,j) = 0;
        end
    end
end

% Buang tepi
for i = 1+h2 : r-h2
    for j = 1+w2 : c-w2
        K(i-1,j-1) = Histeresis(i,j);
    end
end


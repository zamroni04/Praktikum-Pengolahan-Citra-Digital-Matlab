function [K] = zerocross(F, ukuran, sigma)
% Pemerolehan tepi objek pada citra F
% melalui operator Marr-Hildreth
% Hasil: citra K

H = cadarLoG(ukuran, sigma);
pembulatan = false;
potong = true;
G = deteksi(F, H, potong, pembulatan);

% Proses zero crossing
K = zeros(size(G));
[m, n] = size(K);
for y=2 : m-1
    for x=2: n-1
        jum = 0;
        for p = x-1 : x
            for q = y-1 : y
                jum = jum + G(q,p);
            end
        end
        rerata0 = jum / 4;
        
        jum = 0;
        for p = x-1 : x
            for q = y : y+1
                jum = jum + G(q,p);
            end
        end
        rerata1 = jum / 4;
        
        jum = 0;
        for p = x : x+1
            for q = y-1 : y
                jum = jum + G(q,p);
            end
        end
        rerata2 = jum / 4;

        jum = 0;
        for p = x : x+1
            for q = y : y+1
                jum = jum + G(q,p);
            end
        end
        rerata3 = jum / 4;
          
        terbesar = max([rerata0 rerata1 rerata2 rerata3]);
        terkecil = min([rerata0 rerata1 rerata2 rerata3]);
        if (terbesar > 0) && (terkecil < 0)
           K(y,x) = 255;    
        end
    end
end

return


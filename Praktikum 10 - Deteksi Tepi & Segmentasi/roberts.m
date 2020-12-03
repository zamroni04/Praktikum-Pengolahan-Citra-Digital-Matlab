function [G] = roberts(F)
% Pemerolehan tepi objek pada citra F
%    melalui operator Roberts
% Hasil: citra G

[m, n] = size(F);

F=double(F);
for y=1 : m-1
    for x=1 : n-1        
        G(y, x) = sqrt((F(y,x)-F(y+1,x+1))^2 + ...
                       (F(y+1,x)-F(y,x+1))^2) ;
    end
end

G = uint8(G);
   

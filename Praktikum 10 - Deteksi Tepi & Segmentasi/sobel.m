function [G] = sobel(F)

[m, n] = size(F);

F=double(F);
G=zeros(m,n);
for y=2 : m-1
    for x=2 : n-1
        G(y, x) = sqrt(...
             (F(y-1,x+1)+2*F(y,x+1)+F(y+1,x+1) - ...
             F(y-1,x-1)-F(y,x-1)-F(y+1,x-1))^2 + ...
             (F(y-1,x-1)+2*F(y-1,x)+F(y-1,x+1) - ...
             F(y+1,x-1)-2*F(y+1,x)-F(y+1,x+1))^2) ;
    end
end

G = uint8(G);
   

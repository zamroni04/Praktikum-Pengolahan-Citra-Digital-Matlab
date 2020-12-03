% NALAR Contoh penggunaan NOT, AND, OR, XOR, dan 
%     kombinasinya.
clc; clear; clf; close all;

lingkaran = imread('lingkaran.png');
persegi = imread('persegi.png');

Citra1 = lingkaran;
subplot(3,3,1); imshow(Citra1, [0 1]);
title('A');

Citra2 = persegi;
subplot(3,3,2); imshow(Citra2, [0 1]);
title('B');

Citra3 = not(lingkaran);
subplot(3,3,3); imshow(Citra3, [0 1]);
title('not(A)');

Citra4 = and(lingkaran, persegi);
subplot(3,3,4); imshow(Citra4, [0 1]);
title('and(A, B)');

Citra5 = xor(lingkaran, persegi);
subplot(3,3,5); imshow(Citra5, [0 1]);
title('xor(A, B)');

Citra6 = or(lingkaran, persegi);
subplot(3,3,6); imshow(Citra6, [0 1]);
title('or(A, B)');

Citra7 = not(and(lingkaran, persegi));
subplot(3,3,7); imshow(Citra7, [0 1]);
title('not(and(A, B))');

Citra8 = not(xor(lingkaran, persegi));
subplot(3,3,8); imshow(Citra8, [0 1]);
title('not(xor(A, B))');

Citra9 = not(or(lingkaran, persegi));
subplot(3,3,9); imshow(Citra9, [0 1]);
title('not(or(A, B))');

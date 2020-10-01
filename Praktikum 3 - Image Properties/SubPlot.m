lapangan = imread('lapangan.tif');
bangunan = imread('bangunan.png');

subplot(1,2,1); imshow(lapangan);
subplot(1,2,2); imshow(bangunan);

%untuk menutup figure yang sedang aktif
%close all
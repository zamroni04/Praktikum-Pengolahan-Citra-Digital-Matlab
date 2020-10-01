%untuk membaca gambar, file gambar harus satu folder dengan .m file
gambar1 = imread('pantai.png');

%untuk melihat ukuran variable gambar1
%ukuranGambar1 = size(gambar1)

%alt ukuran variable gambar1
[jum_baris, jum_kolom] = size(gambar1);
sprintf('jmlh baris : %d',jum_baris)
sprintf('jmlh kolom : %d',jum_kolom)

%untuk menampilkan gambar
imshow(gambar1)
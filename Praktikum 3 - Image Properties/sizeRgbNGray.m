rgb = imread('apel-merah16.jpg');
gray = imread('apel-merah16-gray.jpg');

disp('size rgb : ');
disp(size(rgb));
disp('size gray : ');
disp(size(gray));

imagesc(rgb)
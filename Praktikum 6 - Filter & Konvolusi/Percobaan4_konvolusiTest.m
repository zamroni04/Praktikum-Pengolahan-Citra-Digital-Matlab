kernel = [-1 0 -1; 0 4 0; -1 0 -1]; 
inputGedung = imread('gedung.tif'); 
inputBoneka = imread('boneka2.tif'); 

konvolusiGedung = uint8(konvolusi (inputGedung, kernel)); 
konvolusiBoneka = uint8(konvolusi (inputBoneka, kernel)); 

subplot(2,2,1);imshow(inputGedung);title('Citra Asli');
subplot(2,2,2);imshow(konvolusiGedung);title('Setelah Konvolusi');
subplot(2,2,3);imshow(inputBoneka);title('Citra Asli');
subplot(2,2,4);imshow(konvolusiBoneka);title('Setelah Konvolusi');

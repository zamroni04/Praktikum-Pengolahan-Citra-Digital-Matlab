img = imread('mikrokontroler.jpg');
keabuan = uint8(0.2989 * double(img(:,:,1)) + 0.5870*double(img(:,:,2)) + 0.1141 * double(img(:,:,3))); 
imwrite(keabuan,'mikro gray.jpg')
imtool(keabuan);
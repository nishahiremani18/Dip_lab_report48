clc;
clear all;
close all;
% Bit Plane Slicing
Image = imread('Fig6.38a.jpg');
Image = rgb2gray(Image);
imshow(Image);
title('Original');
figure(2);
for i = 1:8
subplot(2,4,i);
nth = bitand(Image,2^(8-i));
x= power(2,8-i); %For 1 and 0
nth = double(nth/x);
imshow(nth);
title(strcat('Bit Plane',num2str(9-i)));
end
% Removing Least Significant Bit
removeLSB = bitand(I,254); %LSB is focrfully put 0 by anding with '11111110'
figure(4)
subplot(121);
imshow(Image);
title('Original');
subplot(122);
imshow(removeLSB);
title('Least Significant Bit Removed');
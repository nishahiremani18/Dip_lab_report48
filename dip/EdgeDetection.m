clc;
clear all;
close all;
%Edge Detection
%% Importing an Image
Image = imread('Fig6.38a.jpg');
Image = imresize(Image, 0.5);
Image = rgb2gray(Image);
figure(1);
imshow(Image);
%% Edges by using DWT2
[cA, cH, cV, cD] = dwt(dwt(Image,'haar'));
figure(2);
subplot(221); imshow(uint8(cA));
subplot(222); imshow(uint8(cH));
subplot(223); imshow(uint8(cV));
subplot(224); imshow(uint8(cD));
%% Edges by using Canny
Edge_Canny = edge(Image,'canny');
figure(3);
imshow(Edge_Canny);
title("Edges by using Canny");
%% Edges by using Sobel
Edge_Sobel = edge(Image,'sobel');
figure(4);
imshow(Edge_Sobel);
title("Edges by using Sobel");
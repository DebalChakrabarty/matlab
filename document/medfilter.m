a=imread('C:\Users\Public\Pictures\Sample Pictures\LennaNoise.jpg');
b=rgb2gray(a);
imwrite(b,'C:\Users\ratul\Desktop\salt.png');
%m = imnoise(M,'salt & pepper',0.5);
[row,col]=size(b);
c1=zeros(1,col);
r1=zeros(row+2,1);
imr=[c1;b;c1];
imr2=[r1,imr,r1];
[r,c]=size(imr2);
imr3=imr2;
for i = 2:r-1
    for j = 2:c-1
        M=imr3(i-1:i+1,j-1:j+1);
        imr2(i,j)=median(median(M));
    end
end
imwrite(imr2,'C:\Users\ratul\Desktop\medianfilt.png');
imshow(imr2);
p = imread('Lenna.png');
b=rgb2gray(p);
imwrite(b,'C:\Users\ratul\Desktop\grayscale.png');
[row,col]=size(b);
c1=zeros(row,1);
imr1 =[c1,b,c1];
r1=zeros(1,col+2);
imr = [r1;imr1;r1];
p2=imr;
imr=double(imr);
[r,c]=size(imr);
mask=ones(3,3)/9;
for i=2:r-1
    for j=2:c-1
       sum=0;
       for k=-1:1
           for l=-1:1
               sum = sum + p2(i+k,j+l)*mask(k+2,l+2);
           end
       end
       imr(i,j)=sum;
    end
end
imtool(uint8(imr));
imwrite(imr,'C:\Users\ratul\Desktop\myGray.png')
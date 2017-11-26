a=imread('LennaNoise.jpg');
b=rgb2gray(a);
%m = imnoise(M,'salt & pepper',0.5);
figure
imshow(b);
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
        V=sort(M(:));
        imr2(i,j)=V(5);
    end
end
figure
imshow(imr2);
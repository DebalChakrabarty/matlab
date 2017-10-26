p = imread('C:\Users\Public\Pictures\Sample Pictures\abc.png');
b=rgb2gray(p);
[row,col]=size(b);
%r1=zeros(1,col+2);
c1=zeros(row,1);
imr1 =[c1,b,c1];
%imtool(imr1);
r1=zeros(1,col+2);
imr = [r1;imr1;r1];
p2=imr;
imr=double(imr);
[r,c]=size(imr);
mask=[-1 -1 -1;-1 8 -1;-1 -1 -1];
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

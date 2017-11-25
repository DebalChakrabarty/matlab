a=imread('Lenna.gif');
b=(a);
[row,col]=size(b);
arr=zeros(256);
for i=1:row
   for j=1:col
       arr(b(i,j)+1)= arr(b(i,j)+1)+1;
   end
end
plot(arr);
pr=zeros(256);
pr1=zeros(256);
for k=1:256
    pr(k) = arr(k)/(row*col);
end
k=0;
for l=1:256
     k=k+pr(l);
     pr1(l)= pr1(l)+k;
end
for i=1:row
    for j=1:col
        b(i,j)=pr1(b(i,j)+1)*255;
    end
end
arr1=zeros(256);
for i=1:row
   for j=1:col
       arr1(b(i,j)+1)= arr1(b(i,j)+1)+1;
   end
end
imwrite(b,'C:\Users\ratul\Desktop\myGray.png')
imtool(b);
a=imread('Lenna.png');
b=rgb2gray(a);
[row,col]=size(b);
arr=zeros(256);
for i=1:row
   for j=1:col
       arr(b(i,j)+1)= arr(b(i,j)+1)+1;
   end
end
plot(arr);
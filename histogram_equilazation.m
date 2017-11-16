
a=imread('C:\Users\Public\Pictures\Sample Pictures\einstein.jpg');
b=rgb2gray(a);
%imtool(J);
[row,col]=size(b);
%imtool(a);
arr=zeros(1,256);
for i=1:row
   for j=1:col
       arr(b(i,j)+1)= arr(b(i,j)+1)+1;
   end
end
%plot(arr);
pr=zeros(1,256);
pr1=zeros(1,256);
%imtool(b);
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
arr=zeros(1,256);
for i=1:row
   for j=1:col
       arr(b(i,j)+1)= arr(b(i,j)+1)+1;
   end
end
plot(arr);
%imtool(b);

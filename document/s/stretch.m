imr=imread('C:\Users\Public\Pictures\Sample Pictures\lena.gif');
h1=zeros(256);
h2=zeros(256);

[row,col]=size(imr);
e=imr;
a=0; % lower limit
b=255; % upper limit
c=min(imr(:)); %min pixel value
d=max(imr(:)); %max pixel value

for i=1:row
    for j=1:col
        e(i,j)=(imr(i,j))*((b-a)./(d-c)) + a;
        e(i,j)=round(e(i,j));
    end
end
for i=1:row
    for j=1:col
        h1(imr(i,j)+1)=h1(imr(i,j)+1)+1;
        h2(e(i,j)+1)=h2(e(i,j)+1)+1;
    end
end

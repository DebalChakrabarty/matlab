
a= imread('C:\Users\ratul\Desktop\matlab\document\grayscale.png');
b=a;

[row,col]=size(b);

c1=zeros(1,col); 
r1=zeros(row+2,1); 
imr=[c1;b;c1]; %row padding
imr2=[r1,imr,r1];%column padding
imr2=double(imr2); 
 
mask1=[1 0 -1;1 0 -1;1 0 -1]; %vertical prewitt mask
mask2=[1 1 1;0 0 0;-1 -1 -1]; %horizontal prewitt mask
[r,c]=size(imr2);
imr3=zeros(r,c); %filled with black pixels
imr4=zeros(r,c); %filled with black pixels

for i = 2:r-1
    for j = 2:c-1
     val=0;
     val1=0;
        for i1 = -1:1 
            for j1 = -1:1
                val = val + imr2(i+i1,j+j1)*mask1(i1+2,j1+2);
                val1 = val1 + imr2(i+i1,j+j1)*mask2(i1+2,j1+2);
            end
        end
        imr3(i-1,j-1)=val;
        imr4(i-1,j-1)=val1;
    end
end

subplot(2,2,1), imshow(b);
title('Original');
subplot(2,2,2), imshow(uint8(imr3));
title('Horizontal edge using Prewitt');
subplot(2,2,3), imshow(uint8(imr4));
title('Vertical edge using Prewitt');

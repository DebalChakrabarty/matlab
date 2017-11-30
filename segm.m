clc; clear all;close all;
src=imread('download.jpg');
gray=rgb2gray(src);
[M,N]=size(gray);
count_array=1:256;
tnew=round(rand(1,1)*256);
diff=900;
while (diff > 30)
    g1 = ones(M,N);
    g2 = ones(M,N);
    g1 = g1.*255;
    g2 = g2.*255;
    sum1=0;sum2=0;count1=0;count2=0;
    t0=tnew;
    for i=1 : M
        for j=1 : N
            if(gray(i,j) > t0)
                g1(i,j)=gray(i,j);
                count1=count1+1;
                sum1=sum1+g1(i,j);
            end
            if (gray(i,j) <= t0)
                g2(i,j)=gray(i,j);
                count2=count2+1;
                sum2=sum2+g2(i,j);
            end
        end
    end
    mean1 = sum1/count1;
    mean2 = sum2/count2;
    tnew = (mean1+mean2)/2;
    diff = abs(tnew - t0);
    subplot(1,3,1); imshow(uint8(gray));
    title('Original Image');
    subplot(1,3,2); imshow(uint8(g1));
    title('Group 1 Objects');
    subplot(1,3,3);imshow(uint8(g2));%imhist(gray);
    title('Group 2 Background');
end

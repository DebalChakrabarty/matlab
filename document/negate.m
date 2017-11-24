a=imread('Lenna.png');
figure
[row,col,s]=size(a);
imshow(a);
for i=1:row
    for j=1:col
        for k=1:3
            a(i,j,k)=255-a(i,j,k);
        end
    end
end

figure

imshow(a);




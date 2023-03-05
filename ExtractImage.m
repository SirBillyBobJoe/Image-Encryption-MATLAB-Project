function[Grey]=ExtractImage(colour)
[row,col,layers]=size(colour);

for i=1:row
    for j=1:col
        num=double(colour(i,j,1))+double(colour(i,j,2))+double(colour(i,j,3));
        if rem(num,2)==0
            Grey(i,j)=uint8(0);
        else
            Grey(i,j)=uint8(255);
        end
    end
end
end
function[Cell]=EncryptImage(Grey,Key)

[row,col]=size(Grey);
for i=1:row
    for j=1:col
        if Grey(i,j)<128
            Cell{i,j}=ImageComplement(Key{i,j});
        else
            Cell{i,j}=Key{i,j};
        end
    end
end
end
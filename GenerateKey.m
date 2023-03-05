function[CellArray]=GenerateKey(Array,Cell)

[row,col]=size(Array);

for i=1:row
    for j=1:col
        CellArray{i,j}=Cell{Array(i,j)};
    end
end
end
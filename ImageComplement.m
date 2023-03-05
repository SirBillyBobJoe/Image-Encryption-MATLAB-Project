function[ArrayOut]=ImageComplement(ArrayIn)

[row,col]=size(ArrayIn);

for i=1:row
    for j=1:col
        ArrayOut(i,j)=255-ArrayIn(i,j);
    end
end
end

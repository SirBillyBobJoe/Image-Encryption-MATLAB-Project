function[Array]=ImageToPatterns(ArrayIn)

[row,col]=size(ArrayIn);


for i=1:row
    for j=1:col
        rownew=i*2;
        colnew=j*2;
        temp=ArrayIn{i,j};
        Array(rownew-1:rownew,colnew-1:colnew)=temp;
    end
end
end

function[cell]=ImageToPatterns(Grey)
[row,col]=size(Grey);
for i=1:row/2
    for j=1:col/2
        cell{i,j}=Grey(2*i-1:2*i,2*j-1:2*j);
    end
end
end

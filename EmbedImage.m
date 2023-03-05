function[RGB]=EmbedImage(Grey,Array)

[GreyRow,GreyCol]=size(Grey);
RGB=Array;

for i=1:GreyRow
    for j=1:GreyCol
        num=double(Array(i,j,1))+double(Array(i,j,2))+double(Array(i,j,3));
        disp([double(Array(i,j,1)),double(Array(i,j,2)),double(Array(i,j,3)),rem(num,2)])
        if Grey(i,j)==0
            if rem(num,2)==1
                RGB(i,j,1)=AlterByOne(Array(i,j,1));
                RGB(i,j,2:3)=Array(i,j,2:3);
            else
                RGB(i,j,:)=Array(i,j,:);
            end
        else Grey(i,j)==255
            if rem(num,2)==0
                RGB(i,j,1)=AlterByOne(Array(i,j,1));
                RGB(i,j,2:3)=Array(i,j,2:3);
            else
                RGB(i,j,:)=Array(i,j,:);
            end
        end
    end
end
end
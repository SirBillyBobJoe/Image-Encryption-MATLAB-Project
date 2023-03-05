function[Decrypt]=DecryptImage(Cipher,Key)

[row,col]=size(Cipher);
for i=1:row
    for j=1:col
        if Cipher(i,j)~=Key(i,j)
            Decrypt(i,j)=uint8(0);
        else 
            Decrypt(i,j)=uint8(255);
        end
    end
end
end
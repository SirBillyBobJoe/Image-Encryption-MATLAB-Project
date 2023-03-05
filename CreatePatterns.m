function[CellArray]=CreatePatterns()
array5=[0,255;255,0];
array1=[0,0;255,255];
array5=uint8(array5);
array1=uint8(array1);
CellArray={ImageComplement(array1),array1,rot90(array1),rot90(array1,3),array5,ImageComplement(array5)};
end




function [ dic ] = tableToHashTable( rowNames, vectors )


    dic = containers.Map;
    for i=1:size(rowNames,1)
        word = rowNames(i,1);
        word = word{1};
        vec = table2array(vectors({word},:));
        dic(word) = vec;
    end


end


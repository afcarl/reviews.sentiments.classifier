function [ output ] = wordInRows( rowNames, word )
%WORDINROWS Summary of this function goes here
%   Detailed explanation goes here
    output = 0;
    for j=1:size(rowNames,1)
        if (strcmp(rowNames{j},word))
            output = 1;
            return
        end
    end

end


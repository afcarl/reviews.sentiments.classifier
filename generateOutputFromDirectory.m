function [ ] = generateOutputFromDirectory( path, dic, fileID, label )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    
    dir_listing = dir(path);
    formatSpec = '%4.4f ';

    for i=1:size(dir_listing,1)
        if (dir_listing(i).isdir == 0)
            vec = getParVector(strcat(path,dir_listing(i).name), dic);
            fprintf(fileID,formatSpec,vec);
            fprintf(fileID,'%d\n',label);
        end
    end

end


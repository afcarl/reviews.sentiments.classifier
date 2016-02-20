function [ ] = generateOutputFromDirectory( dirPath, dic, fileID, label )

    addpath('../Utils')
    dir_listing = dir(dirPath);
    formatSpec = '%4.4f ';

    for i=1:size(dir_listing,1)
        if (dir_listing(i).isdir == 0)
            vec = getParVector(strcat(dirPath,dir_listing(i).name), dic);
            fprintf(fileID,formatSpec,vec);
            fprintf(fileID,'%d\n',label);
        end
    end

end


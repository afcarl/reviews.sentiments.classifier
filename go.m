function [ ] = go( dirPath )
    addpath('./Utils');
    OUTPUT_FILE_NAME = 'predicted.txt';
    INPUT_VECTORS_FILE_NAME = 'Data/vectors.txt'; %relative to import.m
    
    dic = importfile(INPUT_VECTORS_FILE_NAME);
    dir_listing = dir(dirPath);
    fileID = fopen(OUTPUT_FILE_NAME,'w');
    formatSpec = '%s %d\n';
    for i=1:size(dir_listing,1)
        if (dir_listing(i).isdir == 0)
            vec = getParVector(strcat(dirPath,dir_listing(i).name), dic);
            classification_result = classify(vec);
            fprintf(fileID,formatSpec,dir_listing(i),classification_result);
        end
    end
end


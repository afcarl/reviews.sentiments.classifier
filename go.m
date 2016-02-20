function [ ] = go( dirPath)
    addpath('./Utils');
    OUTPUT_FILE_NAME = 'predicted.txt';
    INPUT_VECTORS_FILE_NAME = 'Data/vectors.txt'; %relative to import.m
    dirPath = strcat(dirPath,'/');
    dic = importfile(INPUT_VECTORS_FILE_NAME);
    dir_listing = dir(dirPath);
    fileID = fopen(OUTPUT_FILE_NAME,'w');
    formatSpec = '%s %d\n';
    ModelContainer = load('Data/model');
    model = ModelContainer.model;
    for i=1:size(dir_listing,1)
        if (dir_listing(i).isdir == 0)
            vec = getParVector(strcat(dirPath,dir_listing(i).name), dic);
            classification_result = svmpredict(ones(size(vec,1)), vec, model,'-q');
            if (classification_result(1,1) == 1)
                output = 1;
            else 
                output = 0;
            end
            fprintf(fileID,formatSpec,dir_listing(i).name,output);
        end
    end
end


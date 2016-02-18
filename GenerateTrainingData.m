function [] = GenerateTrainingData(w2vVectors, rowNames)
    VECTOR_SIZE = 200;
    fileID = fopen('dataset','w');
    negDirs = dir('neg');
    posDirs = dir('pos');
    formatSpec = '%4.4f ';
    
    for i=1:size(negDirs,1)
        if (negDirs(i).isdir == 0)
            vec = getParVector(strcat('neg/',negDirs(i).name), rowNames, w2vVectors);
            fprintf(fileID,formatSpec,vec);
            fprintf(fileID,'1\n');
        end
    end
    for i=1:size(posDirs,1)
        if (posDirs(i).isdir == 0)
            vec = getParVector(strcat('pos/',posDirs(i).name), rowNames, w2vVectors);
            fprintf(fileID,formatSpec,vec);
            fprintf(fileID,'-1\n');
        end
    end
end


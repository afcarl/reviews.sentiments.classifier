function [labels, data] = getTrainingData(w2vVectors, rowNames)
    VECTOR_SIZE = 200;
    %[w2vVectors, rowNames] = importfile('vectors.txt');
    negDirs = dir('neg');
    posDirs = dir('pos');
    dataMatrixSize = size(negDirs,1) + size(posDirs,1);
    dataMatrix = zeros(dataMatrixSize, VECTOR_SIZE);
    dataMatrixIndex = 1;
    for i=1:size(negDirs,1)
        if (negDirs(i).isdir == 0)
            vec = getParVector(strcat('neg/',negDirs(i).name), rowNames, w2vVectors);
            dataMatrix(dataMatrixIndex,:) = vec;
            dataMatrixIndex = dataMatrixIndex + 1;
        end
    end
    for i=1:size(posDirs,1)
        if (posDirs(i).isdir == 0)
            vec = getParVector(strcat('pos/',posDirs(i).name), rowNames, w2vVectors);
            dataMatrix(dataMatrixIndex,:) = vec;
            dataMatrixIndex = dataMatrixIndex + 1;
        end
    end

    labelsNeg = -1*ones(1,size(negDirs,1));
    labelsPos = ones(1,size(posDirs,1));
    
    labels = [labelsNeg,labelsPos];
    data = dataMatrix;
end


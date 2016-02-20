% assuming positive examples are in 'pos/' and negatives in 'neg/'
    addpath('../Utils');
    inputVectorsFilePath = '../Data/vectors.txt';
    outputDatasetFilePath = '../Data/dataset';
    dic = importfile(inputVectorsFilePath);
    fileID = fopen(outputDatasetFilePath,'w');
    generateOutputFromDirectory('../Data/neg/', dic, fileID, -1 )
    generateOutputFromDirectory('../Data/pos/', dic, fileID, 1 )


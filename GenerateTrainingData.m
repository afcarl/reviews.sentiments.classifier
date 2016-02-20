% assuming positive examples are in 'pos/' and negatives in 'neg/'

function [] = GenerateTrainingData(inputVectorsFilePath, outputDatasetFilePath)
    dic = importfile(inputVectorsFilePath);
    fileID = fopen(outputDatasetFilePath,'w');
    generateOutputFromDirectory( 'neg/', dic, fileID, -1 )
    generateOutputFromDirectory( 'pos/', dic, fileID, 1 )

end


function [] = GenerateTrainingData(dic)
    %dic = importfile('vectors.txt');
    fileID = fopen('dataset','w');
    generateOutputFromDirectory( 'neg/', dic, fileID, -1 )
    generateOutputFromDirectory( 'pos/', dic, fileID, 1 )

end


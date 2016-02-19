function [vector] = getParVector(filePath, dic)
    str = textread(filePath, '%s','delimiter','','bufsize', 50000);
    newStr = regexprep(str,'<\w*\s?/?>',''); %remove html tags
    newStr = regexprep(newStr,'([\.\,])',' '); %replace dot and commas with space
    newStr = regexprep(newStr,'([^a-zA-Z\s])',''); %delete special chars
    words = strsplit(newStr{1});
    counter = 0;
    averageVec = zeros(1,200);
    for i=1:size(words,2)
        wordCell = words(1,i);
        word = lower(wordCell{1});            
        if (isKey(dic,word) == 1)
            wordVec = dic(word);
            averageVec = averageVec + wordVec;
            counter = counter + 1;
        end
    end
    if (counter > 0)
        averageVec = averageVec./counter;
    end
    vector = averageVec;
end

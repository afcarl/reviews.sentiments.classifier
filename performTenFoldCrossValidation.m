function performTenFoldCrossValidation()
    addpath('')
    [ training_label_vector, training_instance_matrix ] = loadData();
    for d=1:4
        
        %Result vector
        vec = zeros(6,2);
        
        %Svm train with 10 fold cross validation
        for logC=1:6
            display(sprintf('training d=%d, c=%d',d,10^logC));
            vec(logC,1) = logC;
            str = sprintf('-s 0 -t 1 -d %d -c %d -v 10', d, 10^logC);
             acc = svmtrain(training_label_vector, sparse(training_instance_matrix), str);
             vec(logC,2) = 100 - acc;
        end
        
        %Plot results
        figure();
        plot(vec(:,1),vec(:,2));
        titleStr = sprintf('Average error as function of C (d=%d)',d);
        title(titleStr);
        xlabel('log(C)');
        ylabel('Average Loss');
        xlim([1 6]) ;
        fileName = sprintf('file %d',d);
        print(fileName,'-djpeg');
    end
end


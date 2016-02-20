function performTenFoldCrossValidation()
    addpath('../Utils')

    [ training_label_vector, training_instance_matrix ] = loadData();
    training_instance_matrix = sparse(training_instance_matrix);
    for d=1:4
        
        %Result vector
        vec = zeros(6,2);
        
        %Svm train with 10 fold cross validation
            display(sprintf('training d=%d, ',d));
            vec(d,1) = d;
            str = sprintf('-s 0 -t 1 -d %d -v 5', d);
             acc = svmtrain(training_label_vector, training_instance_matrix, str);
             vec(d,2) = 100 - acc;
    end
        %Plot results
        figure();
        plot(vec(:,1),vec(:,2));
        titleStr = sprintf('Average error as function of d ');
        title(titleStr);
        xlabel('d');
        ylabel('Average Loss');
        xlim([1 6]) ;
        fileName = sprintf('file %d',d);
        print(fileName,'-djpeg');
end


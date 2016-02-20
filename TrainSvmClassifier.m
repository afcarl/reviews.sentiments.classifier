    addpath('./Utils');
    d = 1; 
    c = 1;
    [ training_label_vector, training_instance_matrix ] = loadData();
    training_instance_matrix = sparse(training_instance_matrix);
    str = sprintf('-s 0 -c %d -d %d', c,d);
    model = svmtrain(training_label_vector, training_instance_matrix, str);
    save('Data/model', 'model')
    display('model saved');



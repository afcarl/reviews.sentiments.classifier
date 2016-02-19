function [ training_label_vector, training_instance_matrix ] = loadData()
    
    training_instance_matrix = loadReviewsDataset('dataset');
    training_label_vector = loadReviewsLabels('dataset');

end


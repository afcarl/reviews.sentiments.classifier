# Building Movies Reviews Classifier

## This code aims to build a classifier on movie reviews. The classification is binary, meaning we aim to predict whether a review is positive or negative.


##### Step1: For each review in the dataset, convert the review to a fixed size vector. 
  1.1 Place the reviews in Data/neg & Data/pos.
  1.2 Place the word2vec representation text file as: Data/vectors.txt
  1.3 Run InitialDatasetCreation/GenerateTrainingData.m  

#### Step2: Train the model  
  2.1 Run TrainSvmClassifier.m to output a model file

#### Step3: Classify new examples
  3.1 Run go.m with input directory path param
  3.2 The script will create a new "predicted.txt" file in its folder
  3.3 Each line in the file specify <review_filename> <prediction>

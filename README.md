# Movies Reviews Sentiment Classifier

#### This code aims to build a classifier on movie reviews. ####
The classification is binary, meaning we aim to predict whether a review is positive or negative.


#### Step1: For each review in the dataset, convert the review to a fixed size vector. 
  1.1 Place the reviews in Data/neg & Data/pos.
  1.2 Place the word2vec representation text file as: Data/vectors.txt.
  1.3 Run InitialDatasetCreation/GenerateTrainingData.m.

#### Step2: Train the model  
  2.1 Run TrainSvmClassifier.m to output a model file.

#### Step3: Classify new examples
  3.1 Run go.m with input directory path param.
  3.2 The script will create a new "predicted.txt" file in its folder.
  3.3 Each line in the file specify <review_filename> <prediction>.
  
  
#### Negative Review Example:
This was so lame that I turned the DVD off...maybe halfway through. It was so weak, I couldn't even pay full enough attention to tell you how far in I made it.Though I really wanted to believe that the depiction of the young Carlito would be somewhat different, I just couldn't buy it. I don't really blame the actors, because I think it was the script that may have fallen flat. I did find myself laughing a few times, but I don't think those lines were intended to be funny.<br /><br />It's only saving grace is that I bought it in a 2 DVD set and I would have paid the price I did for the original alone. This is one of those cases when they should have let the classic stand alone.

#### Positive Review Example:
Brilliant over-acting by Lesley Ann Warren. Best dramatic hobo lady I have ever seen, and love scenes in clothes warehouse are second to none. The corn on face is a classic, as good as anything in Blazing Saddles. The take on lawyers is also superb. After being accused of being a turncoat, selling out his boss, and being dishonest the lawyer of Pepto Bolt shrugs indifferently "I'm a lawyer" he says. Three funny words. Jeffrey Tambor, a favorite from the later Larry Sanders show, is fantastic here too as a mad millionaire who wants to crush the ghetto. His character is more malevolent than usual. The hospital scene, and the scene where the homeless invade a demolition site, are all-time classics. Look for the legs scene and the two big diggers fighting (one bleeds). This movie gets better each time I see it (which is quite often).


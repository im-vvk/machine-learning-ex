% just paste your email in "emailSample2.txt" file

%run for training model Only once
%comment after that
%load('spamTrain.mat');
%C = 0.1;
%model = svmTrain(X, y, C, @linearKernel);

file_contents = readFile('emailSample2.txt');
word_indices  = processEmail(file_contents);
features = emailFeatures(word_indices);
p = svmPredict(model, features);
if p
    fprintf('\nSpam mail detected\n');
else
    fprintf('\nDont worry Not a spam mail :)');
end

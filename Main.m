clear;clearvars;clc;
load ('MNIST/mnist');
%% Train FT2RBM for classification
%train rbm with 100 hidden units
data=im2double(trainX);
labels=trainY';

testdata=im2double(testX);
testlabels=testY';
tic
MFType='STFN';% STFN or TFN;

model=FT2RBM(data,100,labels,MFType,'verbose',true);
yhat=FT2RBM_Predict(model,testdata);
t1=toc
%print error
fprintf('Classification error using RBM with 100 hiddens is %f\n', ...
    sum(yhat~=testlabels)/length(yhat));

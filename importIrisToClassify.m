%imports the iris to classify into an input matrix
%used by classifyIris.m
function [input]=importIrisToClassify()
    file = 'iristestdata.csv'; %the file in which the data is located
    
    [input{1:4}] = textread(file,'%*d %f %f %f %f','delimiter',','); %first we import the input
    input=cell2mat(input); %then we put it in a matrix
    input=input'; %then we transpose the matrix so that we can use it as an input for the neural net
    input=input/10; %scale the data
end
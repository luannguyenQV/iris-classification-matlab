%imports the given amount of iris in a input matrix for the neural net,
%along with the corresponding output matrix
%referenced in the 1)a) section of the report
function [input,output]=importIris(n)
    file = 'iristrainingdata.csv'; %the file in which the data is located
    
    [input{1:4}] = textread(file,'%*d %f %f %f %f %*s','delimiter',',','headerlines', 120-n); %first we import the input for the number of iris the user wants
    input=cell2mat(input); %then we put it in a matrix
    input=input'; %then we transpose the matrix so that we can use it as an input for the neural net
    input=input/10; %scale the data
    
    strings=textread(file,'%*d %*f %*f %*f %*f %s','delimiter',',','headerlines', 120-n); %first we import the output for the number of iris the user wants
    output=[1:n]; %we create a matrix in which we are going to put the numerical values
    
    for i=1:length(strings)%then we replace the strings by numerical values
        if (strcmp(strings(i),'Iris-setosa'))
            output(i)=0;
        elseif (strcmp(strings(i),'Iris-versicolor'))
            output(i)=1;
        elseif (strcmp(strings(i),'Iris-virginica'))
            output(i)=2;
        end
    end
end
    
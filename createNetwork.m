%creates a neural network for iris classification
%referenced in the 2)a) section of the report
function [net]=createNetwork(input,output)
    units=5; %number of hidden units

    lr=0.01; %learning rate for the network
    epochs= 1000; %number of epochs
    mg=1e-0100; %minimum error gradient
    
    net = newff(input, output, units); %we create a feed forward network

    net.divideParam.trainRatio = 1; % use all inputs for training
    net.divideParam.valRatio = 0; % and none for validation
    net.divideParam.testRatio = 0; % or testing
    
    net.trainParam.lr=lr; %we set the learning rate
    net.trainParam.epochs = epochs; %we set the number of epochs
    net.trainParam.min_grad= mg; %we set the minimum error gradient
    
    %we train the network
    [net,errors] = train(net, input, output);
end
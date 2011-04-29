%metafunction for classifying the iris from the iristestdata.csv
%referenced in 2)c)
function [result]=classifyIris()
    %import the inputs and outputs from the traning set
    [trainInput,output]=importIris(120);
    
    %create a network...
    net=createNetwork(trainInput,output);
    %...and train the network
    net = train(net, trainInput, output);
    
    %import the unclassified irises...
    input= importIrisToClassify();
    
    %and classify them
    result = sim(net, input);    
end


%plots the error curve for various learning rates
%referenced in the 2)a) section of the report
function plotLearningRate()
    learningRates=[0.001 0.02 0.05 0.2 0.5];
    colors={'green','blue','red','magenta','black'};
    
    lStrings={};
    for i=1:length(learningRates)
        lStrings=[lStrings strcat('Learning rate: ',num2str(learningRates(i)))];
    end
    
    %set the graph's basic properties
    axis([0 1000 0 0.02])
    xlabel('Epochs');
    ylabel('Performance');
    title('Error graph for various learning rates','FontSize',12);
    %this is for plotting multiple curves on a same graph
    hold on;
    %import the inputs and outputs from the traning set
    [trainInput,output]=importIris(120);
    %create a network...
    net=createNetwork(trainInput,output);
    
    for i=1:length(learningRates)
        %reinitialize the weights
        net=init(net);
        %set the learning rate
        net.trainParam.lr=learningRates(i);
        %...and train the network
        [net,tr] = train(net, trainInput, output);
        %plot the error curve
        p=plot(tr.epoch,tr.perf,'Color',char(colors(i)));
    end

    legend(lStrings);

    hold off;
end
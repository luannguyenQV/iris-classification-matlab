%this function runs i times a network with a min grad of n
%referenced in the 2)a) section of the report
function variateMinGrad(n,loop)
    %we import the input and output patterns
    [input,output]=importIris(120);
    %we create the net
    net=newff(input,output,5);
    
    net.divideParam.trainRatio = 1; % use all inputs for training
    net.divideParam.valRatio = 0; % and none for validation
    net.divideParam.testRatio = 0; % or testing
    
    net.trainParam.min_grad= n;%we set the minimum error gradient
    net.trainParam.lr=0.05; %we set the learning rate
    net.trainParam.epochs = 1000; %we set the number of epochs
    
    total=0;
    for i=1:loop
        net=init(net);
        [net,errors] = train(net, input, output);%train the net
        result = sim(net, input);%run the net on the input pattern
        total=total+sum(round(result)==output); %display the number of successes/total patterns
    end
    disp('Success rate:');
    rate=((total/loop)/120)*100;
    disp([num2str(rate),'%']);
end
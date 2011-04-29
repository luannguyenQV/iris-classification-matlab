%creates and trains a network with the optimal values we obtained, 
%simulates it using the data in iristrainingdata.csv and then displays the
%final success ratios.
%referenced in the 2)b) section of the report
function checkNetwork(loop)
    %import the inputs and outputs from the training set
    [input,output]=importIris(120);
    
    %create a network...
    net=createNetwork(input,output);

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

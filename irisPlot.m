%plots on a graph the values in the 'irstrainingdata.csv' file
%referenced in the 1)b) section of the report
function irisPlot(input, output)
    hold on
    for i=1:length(input)
        sepalRatio=input(1,i)/input(2,i);
        petalRatio=input(3,i)/input(4,i);
        if (output(i)==0)
            plot(sepalRatio,petalRatio,'.');
        elseif (output(i)==1)
            plot(sepalRatio,petalRatio,'.g');
        elseif (output(i)==2)
            plot(sepalRatio,petalRatio,'.m');
        end
    end
    xlabel('Sepal length/width ratio');
    ylabel('Petal length/width ratio');
    title('Input space for the iris','FontSize',12);
    hold off
end    


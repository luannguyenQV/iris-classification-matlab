%given a 1xN matrix, returns the 1xN matrix containing the irises name for
%the iris corresponding to each value
%referenced in the 2)c) section of the report
function [result]=nameIrises(m)
    result=cell(1,length(m)); %we create a matrix in which we are going to put strings

    for i=1:length(m)
        if (round(m(i))==0)
            result{i}='Iris-setosa';
        elseif (round(m(i))==1)
            result{i}='Iris-versicolor';
        elseif (round(m(i))==2)
            result{i}='Iris-virginica';
        end 
    end
end
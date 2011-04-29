%this function adds noise to the values by a margin of +/-n%
%referenced in the 2)d) section of the report
function [randMatrix] = noiseValues(values,n)
    n=n/100; %we divide by 100 to have a percentage
    s=size(values);
    randMatrix=zeros(s);
    
    for i=1:s(1) %we loop through the matrix
        for j=1:s(2)
            noiseValue=values(i,j)*n*2; %see line n+2 for explanation of why we multiply by 2
            noise=noiseValue*rand; %we generate a random value in that interval
            noise=noise-(noiseValue/2); %we divide the value we substract by two (to haev a negative lower bound)
            randMatrix(i,j)=values(i,j)+noise; %we add the noise to the current value
        end
    end
        
end



function[accuracy] =calculateAccuracy(calculatedResult, reference)

m=size(reference,2);


    if(size(reference,1)==1)
                richtig = reference - round(calculatedResult); %When the output is the same a zero is at the column
                richtig = sum(richtig == 0); %count zeros
                accuracy=richtig/m; %Calculate the accuracy in %
            else
                %Calculate the accuracy of the trainings set
                [~ , posOutput] = max(reference); %get the position of korrekt output
                [~ , posPrediction] = max(calculatedResult); %get the position of the prediction
                richtig = posOutput - posPrediction; %When the output is the same a zero is at the column
                richtig = sum(richtig == 0); %count zeros
                accuracy=richtig/m; %Calculate the accuracy in %
    end

end

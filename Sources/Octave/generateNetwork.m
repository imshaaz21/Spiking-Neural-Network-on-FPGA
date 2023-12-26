


function[network] = generateNetwork(structure)
    numberOfLayer = length(structure);
    numberOfThetas = numberOfLayer -1; %Number of matrices between the Layer
    offset = 1; %Add Bias/Offset

    theta{numberOfThetas} = {}; %Initialize the array for matrices that connect the Layer

    %Create and fill the weight matrices with Random numbers
    for i = 1:numberOfThetas
        %Add here Code to specifie the random  values for the weight
        %matrices Range:-0.5 to 0.5
        theta{i} = rand(structure(i+1)+offset,structure(i)+offset)-0.5;
    end

    %Remove the offset from the last (output) layer
    theta{numberOfThetas}(end,:) = [];

    network = theta;
end

function [outputArray, outputLabelsArray] = TimeTable2SequenceArray(inputTimeTable, sample_size)
% TimeTable2SequenceArray convierte los valores de una tabla de tiempo a
% un arreglo secuencial.
%   
    outputArray = [];
    outputLabelsArray = [];
    [rows, ~] = size(inputTimeTable);
    iteration = 1;
    while sample_size * iteration <= rows
        outputArray = [outputArray; inputTimeTable.current(((iteration-1)*sample_size)+1:iteration*sample_size)'];
        outputLabelsArray = [outputLabelsArray; categorical(inputTimeTable.appliances(((iteration-1)*sample_size)+1))];
        iteration = iteration + 1;
    end
end
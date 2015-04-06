function [numero_vetor] = busca_data_NAM(ano,mes,dia)
data= [ano mes dia];
data_inicial=datenum(2004,3,4);

data_final=datenum(data);

numero_vetor = 4*(data_final-data_inicial);

end
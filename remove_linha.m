function [matrix]=remove_linha(entrada)
TFall = abs(entrada(:,1:end-1))>80;

entrada(TFall, :)=[];
TFall = abs(entrada(:,end-1:end))>80;
entrada(TFall, :)=[];
matrix=entrada;
end
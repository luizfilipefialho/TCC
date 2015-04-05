function [entrada2, saida2]=remove_linha2naofuncionando(entrada,saida)
M=[entrada saida];
TFall = abs(M(:,1:end-1))>=80;
M(TFall, :)=[];
entrada2 = M(:,(1:end-1));
saida2=M(:,end);
end
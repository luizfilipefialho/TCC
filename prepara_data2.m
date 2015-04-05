function [entrada2,saida2] = prepara_data2(entrada,saida)
periodos=4;
[entrada, saida] = remove_linha2(entrada,saida);
entrada2 = separa_periodos_passado(entrada,periodos);
saida2 = separa_periodos_futuro(saida,periodos);

end

function [y] = separa_periodos_passado(x,periodos)
[m,n] = size(x);
a=0;
for i = 1:1:m-(2*(periodos-1))
    for f = 1:1:n
        for s = 0:1:(periodos-1)
            z(s+1+(f-1)*4)=x(i+s,f);  
         end
    end
    if a==0
        y=z;
        a=1;
    else
    y= [y;z];
    end
end
end 
function [y] = separa_periodos_futuro(x,periodos)
[m,n] = size(x);
a=0;
for i = periodos:1:m-(periodos-1)
    for f = 1:1:n
        for s = 0:1:(periodos-1)
            z(s+1+(f-1)*4)=x(i+s,f);
         end
    end
    if a==0
        y=z;
        a=1;
    else
    y= [y;z];
    end
end
end 
    
    
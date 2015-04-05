function g = prepara_data(entrada,saida);
periodos=4;
entrada = separa_periodos(entrada,periodos);
saida = separa_periodos(saida,periodos);

end

function y = separa_periodos(x,periodos)
[m,n] = size(x);
a=0;
for i = periodos+1:1:m
    for f = 1:1:n
        for s = 1:1:periodos
            z(s+(f-1)*4)=x(i-s,f);
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
    
    
function data = open_files_testedireto(ano,mes,dia)

completa = str2double(cat(2,num2str(ano),num2str(mes),num2str(dia)));
ano_mes = str2double(cat(2,num2str(ano),num2str(mes)));
url=sprintf('http://nomads.ncdc.noaa.gov/dods/NCEP_NAM/%i/%i/nam_218_%i_0000_fff',ano_mes,completa,completa)
data = ncread(url,'apcpsfc',[678,216,1],[1,1,29]);
end

%cat(2,'redes_treinadas\',(sprintf('network_%i_%i_%i_%i.mat',topologia,t,comb_input,fcn))
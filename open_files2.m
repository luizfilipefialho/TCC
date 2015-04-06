function data = open_files_NAM_()

data_inicial=busca_data(2012,7,2);

data_final=busca_data(2014,7,2);

delta = data_final-data_inicial;
    completa = str2double(datestr(nw,'yyyymmdd'));
    ano_mes= str2double(datestr(nw,'yyyymm'));
    url=sprintf('http://nomads.ncdc.noaa.gov/dods/NCEP_NAM_ANALYSIS/6hr_Pcp');
    data(i,:) = ncread(url,'apcpsfc',[678,216,21],[1,1,8]);
end
data= sum(data,2);
end

%cat(2,'redes_treinadas\',(sprintf('network_%i_%i_%i_%i.mat',topologia,t,comb_input,fcn))
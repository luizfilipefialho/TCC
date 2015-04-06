function data = open_files_NAM()

data_inicial=busca_data_NAM(2012,7,2);

data_final=busca_data_NAM(2013,2,2);

delta = data_final-data_inicial;
    url=sprintf('http://nomads.ncdc.noaa.gov/dods/NCEP_NAM_ANALYSIS/6hr_Pcp');
    data(:,:) = ncread(url,'apcpsfc',[678,216,data_inicial],[1,1,delta]);
   
%data= sum(data,2);
end

%cat(2,'redes_treinadas\',(sprintf('network_%i_%i_%i_%i.mat',topologia,t,comb_input,fcn))
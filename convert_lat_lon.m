function [lat,lon] = convert_lat_lon(lat,lon)
lat_NAM = [12, 61.9];
lon_NAM = [-153.00000000000, -49.30000000000];
lat = (500/(lat_NAM(2)-lat_NAM(1)))*(lat-lat_NAM(1));
lon = (1380/(lon_NAM(2)-lon_NAM(1)))*(lon-lon_NAM(1));
end
% a order e [lon, lat, time]
%data = ncread('http://nomads.ncdc.noaa.gov/dods/NCEP_NAM/201406/20140601/nam_218_20140601_0000_fff','apcpsfc',[678,216,1],[1,1,29])
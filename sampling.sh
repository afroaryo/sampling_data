#Mendownload data
wget https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

in2csv -n weather_data.xlsx

in2csv weather_data.xlsx --sheet "weather_2014" > weather_2014.csv
in2csv weather_data.xlsx --sheet "weather_2015" > weather_2015.csv

#Menggabungkan data
csvstack weather_2014.csv weather_2015.csv | csvlook > weather.csv

#Menghapus file weather_data.xlsx
rm weather_data.xlsx


cat weather.csv | sample -r 0.3 > sample_weather.csv


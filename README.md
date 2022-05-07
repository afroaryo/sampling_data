# sampling_data
tugas 4 shell tooling pacmann

1. Mendownload data dengan wget \n
wget https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

#Melihat sheet yang terdapat di file weather_data.xlsx

in2csv -n weather_data.xlsx

#Memisahkan data weather_data menjadi 2, weather_2014 dan weather_2015

in2csv weather_data.xlsx --sheet "weather_2014" > weather_2014.csv

in2csv weather_data.xlsx --sheet "weather_2015" > weather_2015.csv

#Menggabungkan kedua data

csvstack weather_2014.csv weather_2015.csv | csvlook > weather.csv

#Menghapus file weather_data.xlsx

rm weather_data.xlsx

#Melakukan sampling dengan rasio 0.3 dan membuat file baru bernama sample_weather.csv

cat weather.csv | sample -r 0.3 > sample_weather.csv



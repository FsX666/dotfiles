#!/bin/python
# -*- coding: utf-8 -*-

import requests
import sys

CITY = "2982875" # City ID
API_KEY = "your_api_key"
UNITS = "Metric"
UNIT_KEY = "C"

SUN_CONDITION = ["Clear sky"]
SUN_CLOUD_CONDITION = ["Few clouds"]
CLOUD_CONDITION = ["Scattered clouds", "Broken clouds", "Overcast clouds"]
FOG_CONDITION = ["Mist", "Smoke", "Haze", "Sand/ dust whirls", "Sand", "Dust", "Volcanic ash", "Squalls", "Tornado", "Freezing rain"]
SUN_CLOUD_RAIN_CONDITION = ["Light rain", "Moderate rain"]
CLOUD_RAIN_CONDITION = ["Light intensity shower rain", "Shower rain", "Light intensity drizzle", "Drizzle", "Heavy intensity drizzle", "Light intensity drizzle rain", "Drizzle rain"]
CLOUD_RAIN_HEAVY_CONDITION = ["Heavy intensity rain", "Very heavy rain", "Extreme rain", "Heavy intensity shower rain", "Ragged shower rain", \
                              "Heavy intensity drizzle rain", "Shower rain and drizzle", "Heavy shower rain and drizzle", "Shower drizzle"]
SNOW_CONDITION = ["Light snow", "Snow", "Heavy snow", "Sleet", "Light shower sleet", "Shower sleet", "Light rain and snow", "Rain and snow", "Light shower snow", "Shower snow", "Heavy shower snow"]
THUNDERSTORM_CONDITION = ["Thunderstorm with light rain", "Thunderstorm with rain", "Thunderstorm with heavy rain", "Light thunderstorm", "Thunderstorm", \
                          "Heavy thunderstorm", "Ragged thunderstorm", "Thunderstorm with light drizzle", "Thunderstorm with drizzle", "Thunderstorm with heavy drizzle"]

REQ = requests.get("http://api.openweathermap.org/data/2.5/weather?id={}&appid={}&units=metric&lang=en".format(CITY, API_KEY))
try:
    # HTTP CODE = OK
    if REQ.status_code == 200:
        CURRENT = REQ.json()["weather"][0]["description"].capitalize()
        TEMP = int(float(REQ.json()["main"]["temp"]))
#        print("{}, {} °{}".format(CURRENT, TEMP, UNIT_KEY))
        print("{} °{}".format(TEMP, UNIT_KEY))
        #Sun
        if CURRENT in SUN_CONDITION:
            sys.exit(10)
        #Sun and clouds
        elif CURRENT in SUN_CLOUD_CONDITION:
            sys.exit(11)
        #Clouds
        elif CURRENT in CLOUD_CONDITION:
            sys.exit(12)
        #Fog
        elif CURRENT in FOG_CONDITION:
            sys.exit(13)
        #Sun, clouds, rain
        elif CURRENT in SUN_CLOUD_RAIN_CONDITION:
            sys.exit(14)
        #Cloud and rain
        elif CURRENT in CLOUD_RAIN_CONDITION:
            sys.exit(15)
        #Cloud and heavy rain
        elif CURRENT in CLOUD_RAIN_HEAVY_CONDITION:
            sys.exit(16)
        #Snow
        elif CURRENT in SNOW_CONDITION:
            sys.exit(17)
        #Thunderstorm
        elif CURRENT in THUNDERSTORM_CONDITION:
            sys.exit(18)
    else:
        print("Error: BAD HTTP STATUS CODE " + str(REQ.status_code))
except (ValueError, IOError):
    print("Error: Unable print the data")

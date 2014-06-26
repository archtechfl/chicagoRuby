class VisualizeController < ApplicationController
  def index
   require 'open-uri'
   stations_json = open("http://data.cityofchicago.org/resource/8pix-ypme.json").read
   raw_stations = JSON.parse(stations_json)
  
   @visualize = cooking(raw_stations)
  end
end


def cooking(raw_stations)
  raw_stations_list = raw_stations

  #array = raw_stations_list.keys
  #length = arrays.size

  #puts length

  raw_stations_list.each do |burger|
    name = burger["station_descriptive_name"]
    puts name
  end

  return raw_stations_list
end
class VisualizeController < ApplicationController
  def index
   require 'open-uri'
   stations_json = open("http://data.cityofchicago.org/resource/8pix-ypme.json").read
   raw_stations = JSON.parse(stations_json)
  
   @visualize = cooking(raw_stations)
  end
end


def cooking(raw_stations)
  cooked_stations_list = raw_stations
  return cooked_stations_list
end
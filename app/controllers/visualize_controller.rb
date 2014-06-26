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

  blacklist = Array.new
  non_dupe_list = Array.new

  raw_stations_list.each do |burger|
    name_check = burger["station_descriptive_name"]


   # check if current item matches any item in names array 
    # if name_check == 'any item in blacklist' 
    #  rejection 
    #  else 
    #   push name to blacklist 
     blacklist.push(name_check)
     non_dupe_list.push(burger)
    #   push non_dupe_list
    # end

  end

  return non_dupe_list
end
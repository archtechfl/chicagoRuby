class VisualizeController < ApplicationController
  def index
   require 'open-uri'
   stations_json = open("http://data.cityofchicago.org/resource/8pix-ypme.json").read
   raw_stations = JSON.parse(stations_json)
  
   @visualize = elim_duplicates(raw_stations)
  end
end


def elim_duplicates(raw_stations)
  non_dupe_list = Array.new

  raw_stations.each do |input|
 
    if input['direction_id'] == "E" || input['direction_id'] == "N"
     non_dupe_list.push(input)
    end
  end
  return non_dupe_list
end
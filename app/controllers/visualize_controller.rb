class VisualizeController < ApplicationController
  def index
   stations_json = open("http://data.cityofchicago.org/resource/8pix-ypme.json").read
   stations_list = JSON.parse(stations_json)
   @visualize = stations_list
  end
end

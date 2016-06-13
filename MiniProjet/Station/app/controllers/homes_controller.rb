class HomesController < ApplicationController
  def index
  end

  def find
    @searchText = params["researchtext"]
    @gas_stations = GasStation.all
    @research = Array.wrap(nil)
    @gas_stations.each do |station|
      if station.name.to_s.downcase.include? (@searchText.to_s.downcase)
        @research.append(station)
        puts(station.name)
      end
    end

    respond_to do |format|
      format.js
      format.html
    end
  end
end

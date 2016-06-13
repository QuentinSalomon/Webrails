class GasType < ActiveRecord::Base
  has_many :gas_stations, :through  => :gas_station_types
  has_many :gas_station_types
  belongs_to :vehicul
end

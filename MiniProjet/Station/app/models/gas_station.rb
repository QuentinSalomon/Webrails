class GasStation < ActiveRecord::Base
  has_many :gas_types, :through  => :gas_station_types
  has_many :gas_station_types
end

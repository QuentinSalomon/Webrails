class GasStationType < ActiveRecord::Base
  belongs_to :gas_station
  belongs_to :gas_type
end

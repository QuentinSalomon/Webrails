class Vehicul < ActiveRecord::Base
  belongs_to :user
  has_one :gas_type
end

class AddGasTypeToVehicul < ActiveRecord::Migration
  def change
    add_reference :vehiculs, :gas_type, index: true
  end
end

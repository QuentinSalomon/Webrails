class CreateGasStationTypes < ActiveRecord::Migration
  def change
    create_table :gas_station_types do |t|
      t.integer :gas_station_id
      t.integer :gas_type_id
      t.float :price
      t.datetime :date

      t.timestamps null: false
    end
  end
end

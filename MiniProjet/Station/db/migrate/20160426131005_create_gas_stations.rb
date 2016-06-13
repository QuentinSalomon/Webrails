class CreateGasStations < ActiveRecord::Migration
  def change
    create_table :gas_stations do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.string :brand

      t.timestamps null: false
    end
  end
end

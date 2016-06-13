class CreateAchatEssences < ActiveRecord::Migration
  def change
    create_table :achat_essences do |t|
      t.float :km_traveled
      t.float :liters
      t.float :price_per_liter
      t.integer :vehicul_id
      t.integer :gas_station_id

      t.timestamps null: false
    end
  end
end

class CreateVehiculs < ActiveRecord::Migration
  def change
    create_table :vehiculs do |t|
      t.string :name
      t.string :brand
      t.string :category
      t.float :km
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

class AddFkAchatEssence < ActiveRecord::Migration
  def change
    add_foreign_key :achat_essences, :gas_stations
    add_foreign_key :achat_essences, :vehiculs
  end
end

class CreatePrenoms < ActiveRecord::Migration
  def change
    create_table :prenoms do |t|
      t.string :texte

      t.timestamps null: false
    end
  end
end

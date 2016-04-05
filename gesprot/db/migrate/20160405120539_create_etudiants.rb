class CreateEtudiants < ActiveRecord::Migration
  def change
    create_table :etudiants do |t|
      t.string :prenom
      t.string :nom

      t.timestamps null: false
    end
  end
end

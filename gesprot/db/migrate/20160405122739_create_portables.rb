class CreatePortables < ActiveRecord::Migration
  def change
    create_table :portables do |t|
      t.string :no_serie
      t.string :marque
      t.integer :etudiant_id

      t.timestamps null: false
    end
  end
end

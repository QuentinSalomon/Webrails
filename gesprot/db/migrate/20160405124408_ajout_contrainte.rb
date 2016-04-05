class AjoutContrainte < ActiveRecord::Migration
  def change
    execute "alter table portables
      add constraint fk_portables_etudiants
      foreign key (etudiant_id) references etudiants(id)"
  end
end

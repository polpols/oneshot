class AddAuteuridToCitation < ActiveRecord::Migration
  def change
    add_column :citations, :auteur_id, :integer
  end
end

class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.text :data
      t.integer :pass_id

      t.timestamps
    end
  end
end

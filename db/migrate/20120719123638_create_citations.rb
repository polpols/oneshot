class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.string :theme
      t.string :data
      t.string :url

      t.timestamps
    end
  end
end

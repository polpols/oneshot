class AddUrlToAuteur < ActiveRecord::Migration
  def change
    add_column :auteurs, :url, :string
  end
end

class CreateActivePasswords < ActiveRecord::Migration
  def change
    create_table :active_passwords do |t|
      t.string :url
      t.date :emission
      t.date :expiration

      t.timestamps
    end
  end
end

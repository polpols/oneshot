class AddActiveToActivePassword < ActiveRecord::Migration
  def change
    add_column :active_passwords , :active, :boolean
      end
end

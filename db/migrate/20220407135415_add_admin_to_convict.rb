class AddAdminToConvict < ActiveRecord::Migration[7.0]
  def change
    add_column :convicts, :admin, :boolean, null: false, default: false
  end
end

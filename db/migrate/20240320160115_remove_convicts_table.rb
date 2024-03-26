class RemoveConvictsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :convicts
  end
end

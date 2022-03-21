class RemoveNullConstraintEmailConvict < ActiveRecord::Migration[7.0]
  def up
    change_column :convicts, :email, :string, null: true, default: nil
    change_column :convicts, :phone, :string, null: false
    add_index :convicts, :msj_id, unique: true
  end

  def down
    change_column :convicts, :email, :string, null: true, default: nil
    change_column :convicts, :phone, :string, null: false
    remove_index :convicts, :msj_id, unique: true
  end
end

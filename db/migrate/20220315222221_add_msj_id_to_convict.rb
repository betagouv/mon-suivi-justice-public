class AddMsjIdToConvict < ActiveRecord::Migration[7.0]
  def change
    add_column :convicts, :msj_id, :bigint, null: false
  end
end

class AddPhoneNumberToConvicts < ActiveRecord::Migration[7.0]
  def change
    add_column :convicts, :phone, :string
    add_index :convicts, :phone, unique: true
  end
end

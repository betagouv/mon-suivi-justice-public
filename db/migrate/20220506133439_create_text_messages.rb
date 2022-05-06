class CreateTextMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :text_messages do |t|
      t.string :message_id, null: false, index: { unique: true }
      t.text :content, null: false
      t.string :phone

      t.timestamps
    end
  end
end

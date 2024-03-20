class RemoveTextMessagesTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :text_messages
  end
end

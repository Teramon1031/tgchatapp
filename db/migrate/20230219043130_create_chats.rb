class CreateChats < ActiveRecord::Migration[7.0]
  def change
    create_table :chats do |t|
      t.text :content
      t.boolean :fromAdmin
      t.integer :studentnum

      t.timestamps
    end
  end
end

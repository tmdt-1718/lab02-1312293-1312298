class CreateInboxes < ActiveRecord::Migration[5.1]
  def change
    create_table :inboxes do |t|
      t.string :fromId
      t.string :toId
      t.text :messge
      t.boolean :unread

      t.timestamps
    end
  end
end

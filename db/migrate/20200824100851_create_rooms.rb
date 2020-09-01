class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name,     null: false
      t.string :content
      t.integer :user_id
      t.string :official,  null:false
      t.timestamps
    end
  end
end

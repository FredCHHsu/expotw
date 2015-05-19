class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :happened_at
      t.text :content
      t.string :timeline_pic
      t.timestamps null: false
    end
  end
end

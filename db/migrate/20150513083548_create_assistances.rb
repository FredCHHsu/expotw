class CreateAssistances < ActiveRecord::Migration
  def change
    create_table :assistances do |t|
      t.string :group
      t.string :title
      t.string :name

      t.timestamps null: false
    end
  end
end

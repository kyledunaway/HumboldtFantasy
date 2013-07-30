class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.text :pick_content
      t.string :week_number
      t.integer :user_id
      t.string :username

      t.timestamps
    end
  end
end

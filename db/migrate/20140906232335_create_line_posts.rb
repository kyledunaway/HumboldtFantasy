class CreateLinePosts < ActiveRecord::Migration
  def change
    create_table :line_posts do |t|
      t.text :content
      t.string :title

      t.timestamps
    end
  end
end

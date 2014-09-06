class AddDetailsToLinePost < ActiveRecord::Migration
  def change
    add_column :line_posts, :user_id, :integer
  end
end

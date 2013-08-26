class CreateStandings < ActiveRecord::Migration
  def change
    create_table :standings do |t|
      t.integer :player1
      t.integer :player2
      t.integer :player3
      t.integer :player4
      t.integer :player5
      t.integer :player6
      t.integer :player7
      t.integer :player8
      t.integer :player9
      t.integer :player10
      t.integer :player11
      t.integer :player12
      t.integer :player13
      t.integer :player14
      t.integer :player15

      t.integer :division1
      t.integer :division2
      t.integer :division3
      
      t.timestamps
    end
  end
end

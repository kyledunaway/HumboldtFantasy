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
      t.integer :player16
      t.integer :player17
      t.integer :player18
      t.integer :player19
      t.integer :player20
      t.integer :player21
      t.integer :player22
      t.integer :player23
      t.integer :player24
      t.integer :player25
      t.integer :player26
      t.integer :player27
      t.integer :player28
      t.integer :player29
      t.integer :player30
      
      t.timestamps
    end
  end
end

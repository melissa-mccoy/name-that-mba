class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, null:false
      t.integer :score, null:false
      t.string :game_type
      t.timestamps
    end
  end
end

class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.text :text
      t.integer :student_id
      t.timestamps
    end
  end
end

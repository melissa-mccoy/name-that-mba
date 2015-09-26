class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null:false
      t.string :facebook_id, null:false
      t.string :section
      t.timestamps
    end
  end
end

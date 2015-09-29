class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null:false
      t.string :facebook_id
      t.string :section
      t.string :photo_url
      t.timestamps
    end
  end
end

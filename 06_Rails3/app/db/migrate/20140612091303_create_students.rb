class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.belongs_to :group, index: true
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :index_no

      t.timestamps
    end
  end
end

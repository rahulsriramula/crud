class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :address
      t.string :place_of_birth
      t.string :phone_number
      t.integer :age

      t.timestamps
    end
  end
end

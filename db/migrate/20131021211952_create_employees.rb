class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.integer :room_id
      t.integer :department_id

      t.timestamps
    end
  end
end

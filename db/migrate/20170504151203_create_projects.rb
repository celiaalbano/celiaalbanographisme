class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :work1
      t.string :work2
      t.string :work3
      t.string :description

      t.timestamps
    end
  end
end

class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.integer :duration
      t.float :total_amt
      t.float :cur_amt, default: 0
      t.boolean :funded, default: false
      t.timestamps
    end
  end
end

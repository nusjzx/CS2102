class CreateCategoriesProjects < ActiveRecord::Migration[5.1]
  def change
    create_join_table :categories, :projects do |t|
	    t.index :category_id
	    t.index :project_id
    end
  end
end

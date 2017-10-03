class CreateProjectsUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :projects, :users do |t|
    	t.index :user_id
	    t.index :project_id
    end
  end
end

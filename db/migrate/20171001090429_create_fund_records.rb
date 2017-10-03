class CreateFundRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :fund_records do |t|
      t.belongs_to :project, index: true
      t.belongs_to :user, index: true
      t.float :amount

      t.timestamps
    end
  end
end

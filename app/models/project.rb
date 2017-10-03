class Project < ApplicationRecord

	has_and_belongs_to_many :categories

	has_and_belongs_to_many :enterpreneurs, class_name: "User"

	has_many :fund_records
	has_many :investors, class_name: "User", through: :fund_records


	validates :title, presence: true, length: { maximum: 50 }
    validates :description, presence: true              
    validates :total_amt, presence: true
    
end

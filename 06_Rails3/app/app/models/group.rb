class Group < ActiveRecord::Base
	has_many :students
	validates :name, presence: true
end

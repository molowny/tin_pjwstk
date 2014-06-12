class Student < ActiveRecord::Base
  belongs_to :group
  validates :group, :first_name, :last_name, :age, :index_no, presence: true
end

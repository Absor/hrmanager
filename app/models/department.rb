class Department < ActiveRecord::Base
  belongs_to :faculty
  has_many :employees
end
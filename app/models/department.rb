class Department < ActiveRecord::Base
  belongs_to :faculty
  has_many :employees, :dependent => :restrict_with_error

  validates_presence_of :name, :faculty
end

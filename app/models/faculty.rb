class Faculty < ActiveRecord::Base
  has_many :departments, :dependent => :restrict_with_error

  validates_presence_of :name
end

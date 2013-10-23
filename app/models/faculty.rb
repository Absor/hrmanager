class Faculty < ActiveRecord::Base
  has_many :departments, :dependent => :restrict

  validates_presence_of :name
end

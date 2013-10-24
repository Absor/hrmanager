class Room < ActiveRecord::Base
  has_many :employees, :dependent => :restrict_with_error

  validates_presence_of :name
end

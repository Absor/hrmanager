class Room < ActiveRecord::Base
  has_many :employees, :dependent => :restrict

  validates_presence_of :name
end

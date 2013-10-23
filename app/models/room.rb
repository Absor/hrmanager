class Room < ActiveRecord::Base
  has_many :employees, :dependent => :restrict
end

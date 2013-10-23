class User < ActiveRecord::Base

  has_secure_password

  validates_length_of :password, :minimum => 8
  validates_length_of :username, :minimum => 3, :maximum => 15
end

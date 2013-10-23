class Employee < ActiveRecord::Base
  belongs_to :room
  belongs_to :department
  has_many :research_group_memberships, :dependent => :destroy
  has_many :research_groups, :through => :research_group_memberships

  validates_presence_of :name, :email, :room, :department
end

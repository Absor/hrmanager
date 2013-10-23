class ResearchGroup < ActiveRecord::Base
  has_many :research_group_memberships, :dependent => :destroy
  has_many :members, :through => :research_group_memberships, :source => :employee

  validates_presence_of :name
end

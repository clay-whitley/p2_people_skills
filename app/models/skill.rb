class Skill < ActiveRecord::Base
  validates :name, uniqueness: true

  has_many :talents
  has_many :users, through: :talents
end

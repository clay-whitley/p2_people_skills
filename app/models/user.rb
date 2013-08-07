class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :talents
  has_many :skills, through: :talents
end

class Skill < ActiveRecord::Base
  validates :name, uniqueness: true

  has_many :talents
  has_many :users, through: :talents

  def user_with_proficiency(value)
    talent = self.talents.where(rating: value).first
    talent.user
  end
end

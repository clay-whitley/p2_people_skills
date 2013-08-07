class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :talents
  has_many :skills, through: :talents

  def proficiency_for(skill)
    talent = self.talents.where(skill_id: skill.id).first
    talent.rating
  end

  def set_proficiency_for(skill, value)
    talent = self.talents.where(skill_id: skill.id).first
    talent.update_attributes(rating: value)
  end
end

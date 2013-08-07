class Talent < ActiveRecord::Base
  # Remember to create a migration!
  before_create :init_defaults

  belongs_to :user
  belongs_to :skill

  def init_defaults
    self[:rating] = 0
  end
end

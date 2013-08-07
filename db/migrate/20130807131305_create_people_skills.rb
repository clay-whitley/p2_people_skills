class CreatePeopleSkills < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.belongs_to :skill
      t.belongs_to :user

      t.integer :rating

      t.timestamps
    end
  end
end

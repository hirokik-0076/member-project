class Project < ApplicationRecord
  has_many :members_projects
  has_many :members, through: :members_projects

  def self.search(keyword) 
    if keyword 
      where('skill LIKE ?', "%#{keyword}%")
    else
      Project.all
    end
  end
end

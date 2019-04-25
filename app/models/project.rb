class Project < ApplicationRecord
  has_many :members_projects
  has_many :members, through: :members_projects

  def self.search(keyword) 
    if keyword 
      where('name LIKE ?', "%#{keyword}%")
    else
      Project.all #全て表示。
    end
  end
end

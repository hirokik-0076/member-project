class Project < ApplicationRecord
  has_many :numbers
  has_many :members, through: :numbers

  def self.search(keyword) 
    if keyword 
      where('name LIKE ?', "%#{keyword}%")
    else
      Project.all #全て表示。
    end
  end
end

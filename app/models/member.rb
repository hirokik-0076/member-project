class Member < ApplicationRecord
  has_many :members_projects
  has_many :projects, through: :members_projects

  def self.search(keyword)
    if keyword
      where('name LIKE ?', "%#{keyword}%")
    else
      Member.all #全て表示。
    end
  end
end

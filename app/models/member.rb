class Member < ApplicationRecord
  has_many :members_projects
  has_many :projects, through: :members_projects

  def self.search(keyword)
    if keyword
      where('skill LIKE ?', "%#{keyword}%")
    else
      Member.all
    end
  end
end

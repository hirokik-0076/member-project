class Member < ApplicationRecord
  has_many :numbers
  has_many :projects, through: :numbers

  def self.search(keyword)
    if keyword
      Member.where('name LIKE ?', "%#{keyword}%")
    else
      Member.all #全て表示。
    end
  end
end

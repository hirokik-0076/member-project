class Member < ApplicationRecord
  has_many :numbers
  has_many :projects, through: :numbers
end

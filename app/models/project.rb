class Project < ApplicationRecord
  has_many :numbers
  has_many :members, through: :numbers
end

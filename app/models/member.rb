class Member < ApplicationRecord
  has_many :members_projects
  has_many :projects, through: :members_projects
end

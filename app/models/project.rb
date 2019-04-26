class Project < ApplicationRecord
  has_many :members_projects
  has_many :members, through: :members_projects
end

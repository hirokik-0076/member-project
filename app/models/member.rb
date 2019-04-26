class Member < ApplicationRecord
  has_many :membersprojects
  has_many :projects, through: :membersprojects
end

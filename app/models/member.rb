class Member < ApplicationRecord
    has_many :adds
    has_many :projects, through: :adds
end

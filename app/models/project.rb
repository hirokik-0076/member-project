class Project < ApplicationRecord
    has_many :adds
    has_many :members, through: :adds
end

class Project < ApplicationRecord
    has_and_belongs_to_many :members
    accepts_nested_attributes_for :members
end

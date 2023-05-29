class Team < ApplicationRecord
  has_many :members

  accepts_nested_attributes_for :members, allow_destroy: true
end

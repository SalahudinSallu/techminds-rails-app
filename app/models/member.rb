class Member < ApplicationRecord
  has_one_attached :image
  belongs_to :team
end

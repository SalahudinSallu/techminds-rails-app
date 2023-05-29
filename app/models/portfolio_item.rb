class PortfolioItem < ApplicationRecord
  has_one_attached :image
  belongs_to :portfolio
end

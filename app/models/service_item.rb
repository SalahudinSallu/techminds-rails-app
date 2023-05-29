class ServiceItem < ApplicationRecord
  has_one_attached :icon
  belongs_to :service
end

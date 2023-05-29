class Service < ApplicationRecord
  has_many :service_items

  accepts_nested_attributes_for :service_items, allow_destroy: true
end

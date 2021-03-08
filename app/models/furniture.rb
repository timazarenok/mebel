class Furniture < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :category
  has_one_attached :image
end

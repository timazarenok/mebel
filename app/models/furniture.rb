class Furniture < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :category
  has_one_attached :image

  def self.search(search)
    if search
      Array(self.where(name: search))
    else
      Furniture.all
    end
  end
end

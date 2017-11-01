class Attributeproduct < ApplicationRecord
  belongs_to :product
  belongs_to :attribute
  has_many :informationquotes
end

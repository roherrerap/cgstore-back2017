class Attributeproduct < ApplicationRecord
  belongs_to :product
  belongs_to :feature
  has_many :informationquotes
end

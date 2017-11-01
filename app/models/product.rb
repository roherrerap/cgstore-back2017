class Product < ApplicationRecord
  has_many :typeproducts
  has_many :quotes
  has_many :attributeproducts
end

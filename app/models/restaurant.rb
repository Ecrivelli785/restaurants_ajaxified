class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIA = ["Vegetariano", "Carne"]
end

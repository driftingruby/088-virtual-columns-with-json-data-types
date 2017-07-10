class Product < ApplicationRecord
  belongs_to :size, optional: true
end

class CategoryCountry < ApplicationRecord
    belongs_to :country
    belongs_to :category 
end

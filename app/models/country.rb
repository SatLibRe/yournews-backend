class Country < ApplicationRecord
    has_many :country_users
    has_many :users, through: :country_users
    has_many :category_countries
    has_many :categories, through: :category_countries
end

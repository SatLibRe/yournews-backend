class Category < ApplicationRecord
    has_many :category_countries
    has_many :countries, through: :category_countries
    has_many :posts
    has_many :sources, through: :posts
    has_many :user_categories
    has_many :users, through: :user_categories
end

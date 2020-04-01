class Source < ApplicationRecord
    has_many :posts
    has_many :categories, through: :posts
    has_many :user_sources
    has_many :users, through: :user_sources
end

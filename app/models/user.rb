class User < ApplicationRecord
    has_many :country_users
    has_many :countries, through: :country_users
    has_many :user_sources
    has_many :sources, through: :user_sources
    has_many :user_categories
    has_many :categories, through: :user_categories
    has_many :custom_query_users
    has_many :custom_queries, through: :custom_query_users

end

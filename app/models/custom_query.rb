class CustomQuery < ApplicationRecord
    has_many :custom_query_users
    has_many :users, through: :custom_query_users
end

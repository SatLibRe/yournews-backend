class CustomQueryUser < ApplicationRecord
    belongs_to :user
    belongs_to :custom_query
end

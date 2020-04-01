class CreateCategoryCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :category_countries do |t|
      t.integer  :category_id
      t.integer  :country_id
      t.timestamps
    end
  end
end

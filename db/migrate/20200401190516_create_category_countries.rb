class CreateCategoryCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :category_countries do |t|
      t.category_id :integer
      t.country_id :integer
      t.timestamps
    end
  end
end

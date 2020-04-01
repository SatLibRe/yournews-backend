class CreateCountryUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :country_users do |t|
      t.integer :user_id
      t.integer :country_id

      t.timestamps
    end
  end
end

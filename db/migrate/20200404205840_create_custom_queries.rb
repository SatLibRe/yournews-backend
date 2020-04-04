class CreateCustomQueries < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_queries do |t|
      t.string :name
      t.timestamps
    end
  end
end

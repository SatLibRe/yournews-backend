class CreateCustomQueryUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_query_users do |t|
      t.integer :user_id
      t.integer :custom_query_id
      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :url_to_image
      t.string :title
      t.string :description
      t.string :url
      t.string :content
      t.string :category_id
      t.string :source_id

      t.timestamps
    end
  end
end

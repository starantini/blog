class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.text :spanishbody
      t.string :image
      t.string :category
      t.string :author
      t.string :link

      t.timestamps
    end
  end
end

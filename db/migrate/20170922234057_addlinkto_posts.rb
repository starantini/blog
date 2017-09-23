class AddlinktoPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :link, :string
  end
end

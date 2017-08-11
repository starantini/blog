class Post < ApplicationRecord
  mount_uploader :image, ImageUploader


  validates :title, presence: true,
                  length: { minimum: 4 }
  validates_presence_of :author, :body

end

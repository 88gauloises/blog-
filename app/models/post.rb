class Post < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :comments, dependent: :destroy
  has_many :comments

  validates :title, presence: true, length: { minimum: 5 }
  validates :name, presence: true
end

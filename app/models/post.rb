class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :comments

  validates :title, presence: true, length: { minimum: 5 }
end

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { minimum: 2, maximum: 60 }
  validates :body, presence: true, length: { minimum: 10, maximum: 600 }
end

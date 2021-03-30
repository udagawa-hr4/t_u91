class Post < ApplicationRecord
  belongs_to :user
  has_many :comments 
  has_one_attached :image
  validates :title, presence: true,length: { in: 1..20}
  validates :text, presence: true,length:{
    in: 1..1000}
  validate :image
end

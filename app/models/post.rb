class Post < ApplicationRecord
  belongs_to :user
  has_many :comments 
  has_one_attached :image
  validates :title, presence: true,length: { in: 1..20}
  validates :text, presence: true,length:{
    in: 1..1000}
  validate :image
  def self.search(search)
    if search
      Post.where(['text LIKE(?)OR title  LIKE(?)', "%#{search}%","%#{search}%"])
    else
      Post.all
    end
  end
end

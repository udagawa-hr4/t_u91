class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image, dependent: :destroy
  validates :title, presence: true,length: { in: 1..20}
  validates :text, presence: true,length:{
    in: 1..1000}
  validate :image
  def self.search(search)
    if search
      Post.joins(:user).where(['text LIKE(?)OR title  LIKE(?)OR nickname LIKE(?)', "%#{search}%","%#{search}%","%#{search}%"])
    else
      Post.all
    end
  end
end

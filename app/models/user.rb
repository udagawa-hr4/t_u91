class User < ApplicationRecord
  validates :nickname, presence: true,length: { in: 1..20}
  has_many :comments 
  has_many :posts
  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile
  has_many :blogs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

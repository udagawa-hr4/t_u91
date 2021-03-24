class User < ApplicationRecord
  validates :nickname, presence: true
  has_many :comments 
  has_many :posts
  has_one :profile
  has_many :calendar


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

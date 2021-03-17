class User < ApplicationRecord
  validates :nickname, presence: true

  has_many :posts
  has_one :profile


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

class User < ApplicationRecord
  validates :nickname, presence: true,length: { in: 1..20}
  has_many :comments , dependent: :destroy
  has_many :posts, dependent: :destroy
  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile
  has_many :blogs, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

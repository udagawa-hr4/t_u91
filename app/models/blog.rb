class Blog < ApplicationRecord
  validates :title, presence: true

  belongs_to :user

  def self.search(search)
    if search
      Blog.where('title LIKE ? OR content LIKE ?', "%#{search}%","%#{search}%")
    else
      Blog.all
    end
  end
end 

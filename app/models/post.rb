class Post < ApplicationRecord
  belongs_to :user, optional: true
  scope :current_month, -> { where(date: Time.now.beginning_of_month..Time.now.end_of_month) }

  def self.search(search)
    if search
      Post.where('date LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end

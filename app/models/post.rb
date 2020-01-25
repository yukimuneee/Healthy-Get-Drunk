class Post < ApplicationRecord
  belongs_to :user, optional: true
  scope :current_month, -> { where(created_at: Time.now.beginning_of_month..Time.now.end_of_month) }
end

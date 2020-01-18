class Personal < ApplicationRecord
  belongs_to :user, optional: true

  validates :height,                    presence: true
  validates :weight,                    presence: true
  validates :age,                       presence: true
  validates :month,                     presence: true
  validates :monthly_drinking_money,    presence: true
end

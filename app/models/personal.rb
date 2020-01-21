class Personal < ApplicationRecord
  belongs_to :user

  HEIGHT_WEIGHT_VALIDATION = /\A[-]?[0-9]+(\.[0-9]+)?\z/
  MONTHLY_DRINKING_MONEY_VALIDATION = /\A[-]?[0-9]+(\,[0-9]+)?\z/


  validates :height,                    presence: true,    format: { with: HEIGHT_WEIGHT_VALIDATION }
  validates :weight,                    presence: true,    format: { with: HEIGHT_WEIGHT_VALIDATION }
  validates :age,                       presence: true
  validates :month,                     presence: true
  validates :monthly_drinking_money,    presence: true,    format: { with: MONTHLY_DRINKING_MONEY_VALIDATION }
end

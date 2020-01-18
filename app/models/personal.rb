class Personal < ApplicationRecord
  belongs_to :user, optional: true

  HEIGHT_WEIGHT_VALIDATION = /^[-]?[0-9]+(\.[0-9]+)?$/
  AGE_VALIDATION = /^[0-9]+$/
  HEIGHT_WEIGHT_VALIDATION = /^[-]?[0-9]+(\.[0-9]+)?$/
  MONTH_VALIDATION = /^[a-z]+$/
  MONTHLY_DRINKING_MONEY_VALIDATION = /^[a-z]+$/

  validates :height,                    presence: true
  validates :weight,                    presence: true
  validates :age,                       presence: true
  validates :month,                     presence: true
  validates :monthly_drinking_money,    presence: true
end

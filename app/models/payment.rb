class Payment < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :account_number, presence: true
  validates :amount, presence: true

  enum category: [:household, :travel, :dining, :other, :unknown]
end
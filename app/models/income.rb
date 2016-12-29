class Income < ApplicationRecord
  belongs_to :user
  validates :category, presence: true
  validates :amount, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :date, presence: true
end

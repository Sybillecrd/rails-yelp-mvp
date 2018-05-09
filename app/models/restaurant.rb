class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates_associated :reviews
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates :phone_number, presence: true, uniqueness: true
end

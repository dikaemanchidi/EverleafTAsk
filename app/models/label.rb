class Label < ApplicationRecord
  has_many :labellings, dependent: :destroy
  has_many :tasks, through: :labellings
  belongs_to :user
  validates :name, presence: true
  validates :name, uniqueness: true
end

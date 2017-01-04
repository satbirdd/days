class Day < ApplicationRecord
  belongs_to :user
  belongs_to :theme

  validates :date, uniqueness: true, presence: true

  scope :recent_year, -> {
    where("created_at >= :last_year", last_year: Date.today.last_year)
  }
end

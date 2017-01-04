class Day < ApplicationRecord
  belongs_to :user
  belongs_to :theme

  scope :recent_year, -> {
    where("created_at >= :last_year", last_year: Date.today.last_year)
  }
end

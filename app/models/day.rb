class Day < ApplicationRecord
  belongs_to :user
  belongs_to :theme

  validates :date, uniqueness: true, presence: true
  validate :date_validate

  scope :recent_year, -> {
    where("created_at >= :last_year", last_year: Date.today.last_year)
  }

  private

  def date_validate
    if date > Date.today || date < Date.today.days_ago(3)
      errors.add(:base, "无效的日期，只能是最近四天之内！")
    end
  end
end

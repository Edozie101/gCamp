class Task < ActiveRecord::Base
  validate :date_cannot_be_in_the_past
  validates :date, presence: true
  validates :description, presence: true
  belongs_to :project

  private
  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end

end

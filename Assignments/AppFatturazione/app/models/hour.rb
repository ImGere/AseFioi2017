class Hour < ApplicationRecord
  belongs_to :client
  belongs_to :user
  belongs_to :invoice, optional: true

  validates_presence_of :date, :start_time, :end_time, :description, :user_id, :client_id
  validate :start_must_be_before_end_time
  validate :end_must_be_after_start_time

  def start_must_be_before_end_time
    errors.add(:start_time, "must be before end time") unless start_time < end_time
  end
  def end_must_be_after_start_time
    errors.add(:end_time, "must be after start time") unless end_time > start_time
  end
end

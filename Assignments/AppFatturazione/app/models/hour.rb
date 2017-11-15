class Hour < ApplicationRecord
  belongs_to :client
  belongs_to :user
  validates_presence_of :date, :start_time, :end_time, :description, :user_id, :client_id
end

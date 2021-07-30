class Event < ApplicationRecord
  validates :name, :event_type, presence: true
  validates :event_type, inclusion: { in: %w(view click scroll submit),
    message: "%{value} is not a valid event_type" }
end

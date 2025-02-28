# frozen_string_literal: true

class EventUser < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :user_id, uniqueness: { scope: :event_id }
end

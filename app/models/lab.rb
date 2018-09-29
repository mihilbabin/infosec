class Lab < ApplicationRecord
  validates :title, :topic, :goal, :task, :partial_name, presence: true
end

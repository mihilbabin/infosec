class Lab < ApplicationRecord
  validates :title, :topic, :partial_name, presence: true
end

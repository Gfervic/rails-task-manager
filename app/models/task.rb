class Task < ApplicationRecord
  validates :name, presence: true
  validates :content, presence: true
  validates :priority, inclusion: { in: 0..10 }
end

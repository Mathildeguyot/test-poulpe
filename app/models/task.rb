class Task < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :deadline, presence: true
  validates :title, presence: true
end

class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :utilizer
  validates :content, :date, presence: true
end
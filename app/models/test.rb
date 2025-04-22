class Test < ApplicationRecord
  belongs_to :user

  has_many :test_questions
  has_many :questions, through: :test_questions

  validates_presence_of :title
end
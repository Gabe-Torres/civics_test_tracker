class Question < ApplicationRecord
  has_many :test_questions
  has_many :test, through: :test_questions
  
  validates_presence_of :question_text,
                        :answer

end
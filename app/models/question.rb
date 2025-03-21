class Question < ApplicationRecord
  validates_presence_of :question_text,
                        :answer,
                        :answer_status
end
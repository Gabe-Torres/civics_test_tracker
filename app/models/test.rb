class Test < ApplicationRecord
  belongs_to :user

  validates_presence_of :title,
                        :number_correct,
                        :number_incorrect
end
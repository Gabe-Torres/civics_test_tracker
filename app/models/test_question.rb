class TestQuestion < ApplicationRecord
  belongs_to :test
  belongs_to :question
end
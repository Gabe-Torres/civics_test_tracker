require 'rails_helper'

RSpec.describe Question, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:question_text) }
    it { should validate_presence_of(:answer) }
  end
end

require 'rails_helper'

RSpec.describe Test, type: :model do
  describe 'Associations' do
    it { should belong_to(:user) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:number_correct) }
    it { should validate_presence_of(:number_incorrect) }
  end
end

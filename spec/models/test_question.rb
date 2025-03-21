require 'rails_helper'

RSpec.describe TestQuestion, type: :model do
  describe 'Associations' do
    it { should belong_to(:Test) }
    it { should belong_to(:Question) }
  end
end

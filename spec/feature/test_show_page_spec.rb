require "rails_helper"

RSpec.describe 'test show page', type: :feature do
  describe 'a user goes to look at questions' do
    scenario 'sees some questions' do
    user = User.create!(:email => 'nottest@example.com', :password => 'f4k3p455w0rd')
    test = Test.create!(:user => user, :title => "3/27/25")
    login_as(user, :scope => :user)

    visit test_path(test.id)

    expect(page).to have_content(test.title)
    end
  end
end
require "rails_helper"

RSpec.describe 'new test', type: :feature do
  describe 'a user goes to homepage clicks new test button' do
    scenario 'test generates' do
    user = User.create!(:email => 'nottest@example.com', :password => 'f4k3p455w0rd')
    login_as(user, :scope => :user)

    visit root_path

    expect(page).to have_button("New Test")

    click_button "New Test"
    expect(page).to have_content(Date.today)
    end
  end
end
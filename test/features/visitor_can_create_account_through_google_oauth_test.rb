=begin
When user visits home page
and clicks on Create Account
they are prompted to authorize Google login
they then are returned to the homepage
and they see a link that says "Log out"
=end
require 'test_helper'

class CanCreateAccountThroughGoogleOAuth < Capybara::Rails::TestCase
  test 'visitor can create an account through google oauth' do
    Capybara.default_driver = :selenium
    visit '/'

    assert page.has_link?('Create Account', href: '/auth/google_oauth2')
    click_link 'Create Account'

    assert_current_path('')
  end
end

require "test_helper"

class CanViewIssuesFromHomeTest < Capybara::Rails::TestCase
  def setup
    Rails.application.load_seed
  end

  test "home shows issues index" do
    visit '/'
    assert page.has_content?("Bias-Motivated Harassment and Crime")
  end
end

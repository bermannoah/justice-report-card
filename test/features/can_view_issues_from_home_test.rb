require "test_helper"

class CanViewIssuesFromHomeTest < Capybara::Rails::TestCase
  def setup
    Rails.application.load_seed
  end

  test "home shows issues index" do
    issue = create(:issue)
    visit '/'
    assert page.has_content?(issue.title)
  end
end

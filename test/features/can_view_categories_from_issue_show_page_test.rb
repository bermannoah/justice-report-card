require "test_helper"

class CanViewCategoriesFromIssueShowPageTest < Capybara::Rails::TestCase
  test "categories listed on issue show page" do
    state = create(:state)
    issue = create(:issue)
    c_1, c_2, c_3 = categories = create_list(:category, 5, issue_id: issue.id)

    visit "states/#{state.id}/issues/#{issue.id}"
    assert page.has_content? c_1.title
    assert page.has_content? c_2.title
    assert page.has_content? c_3.title
  end
end

require "test_helper"

class UserCanAccessIssueShowPageFromHomepageTest < Capybara::Rails::TestCase
  test "link to issue show page from homepage" do
    state = create(:state)
    issue = create(:issue)
    category = create(:category, issue_id: issue.id)
    subcat = create(:subcategory, category_id: category.id)
    subcat_score = create(:subcategory_score,
                           state_id: state.id,
                           subcategory_id: subcat.id,
                           score: 2)

    visit "/"

    assert page.has_link?(state.percent_complete(issue), href: "/states/#{state.id}/issues/#{issue.id}" )#state_issue_path(state, issue))

    click_link(state.percent_complete(issue))

    assert_current_path("/states/#{state.id}/issues/#{issue.id}")
    assert page.has_content? state.name
    assert page.has_content? issue.title
  end

end

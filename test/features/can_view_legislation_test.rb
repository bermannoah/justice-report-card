require "test_helper"

class CanViewLegislationTest < Capybara::Rails::TestCase
  test "legislation shown on issue show page" do
    state = create(:state)
    issue = create(:issue)
    legislation = create(:legislation,
                         issue_id: issue.id,
                         state_id: state.id)

    visit "states/#{state.id}/issues/#{issue.id}"

    assert page.has_content? legislation.title
    assert page.has_content? legislation.description
    assert page.has_content? legislation.level
    assert page.has_content? "[link]"
  end

  test "only legislation matching state shown on issue show page" do
    state_1 = create(:state)
    state_2 = create(:state)
    issue = create(:issue)
    legislation_1 = create(:legislation,
                         issue_id: issue.id,
                         state_id: state_1.id)
    legislation_2 = create(:legislation,
                         issue_id: issue.id,
                         state_id: state_2.id)

    visit "states/#{state_1.id}/issues/#{issue.id}"

    assert page.has_content? legislation_1.title
    assert page.has_content? legislation_1.description
    assert page.has_content? legislation_1.level
    assert page.has_content? "[link]"
    refute page.has_content? legislation_2.title
    refute page.has_content? legislation_2.description
  end
end

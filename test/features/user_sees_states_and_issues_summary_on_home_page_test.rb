require "test_helper"

class UserSeesStatesAndIssuesSummaryOnHomePageTest < Capybara::Rails::TestCase
  test "states and issues listed on homepage" do
    region = create(:region)
    division = create(:division, region_id: region.id)
    state_1, state_2, state_3 = create_list(:state, 3, division_id: division.id)
    issue = create(:issue)
    category = create(:category, issue_id: issue.id)
    subcat_1, subcat_2, subcat_3 = subcats = create_list(:subcategory, 3, category_id: category.id)
    subcat_score_1a = create(:subcategory_score,
                                 state_id: state_1.id,
                                 subcategory_id: subcat_1.id,
                                 score: 2)
    subcat_score_2a = create(:subcategory_score,
                                 state_id: state_2.id,
                                 subcategory_id: subcat_1.id,
                                 score: 5)
    subcat_score_2b = create(:subcategory_score,
                                state_id: state_2.id,
                                subcategory_id: subcat_2.id,
                                score: 5)
    subcat_score_3a = create(:subcategory_score,
                                 state_id: state_3.id,
                                 subcategory_id: subcat_1.id,
                                 score: 2)
    subcat_score_3b = create(:subcategory_score,
                                 state_id: state_3.id,
                                 subcategory_id: subcat_2.id,
                                 score: 5)
    subcat_score_3c = create(:subcategory_score,
                                state_id: state_3.id,
                                subcategory_id: subcat_3.id,
                                score: 5)

    visit "/"

    assert page.has_content? state_1.name
    assert page.has_content? state_2.name
    assert page.has_content? state_3.name
    assert page.has_content? issue.title
    assert page.has_content? "33%"
    assert page.has_content? "67%"
    assert page.has_content? "100%"
  end
end

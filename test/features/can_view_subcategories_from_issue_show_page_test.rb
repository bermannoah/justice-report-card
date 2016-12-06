require "test_helper"

class CanViewSubcategoriesFromIssueShowPageTest < Capybara::Rails::TestCase
  test "subcategories listed on issue show page" do
    state = create(:state)
    issue = create(:issue)
    category = create(:category, issue_id: issue.id)
    subcat_1, subcat_2, subcat_3 = subcats = create_list(:subcategory, 3, category_id: category.id)
    subcategory_score_1 = create(:subcategory_score,
                                 state_id: state.id,
                                 subcategory_id: subcat_1.id,
                                 score: 2)
    subcategory_score_2 = create(:subcategory_score,
                                 state_id: state.id,
                                 subcategory_id: subcat_2.id,
                                 score: 5)
    subcategory_score_3 = create(:subcategory_score,
                                 state_id: state.id,
                                 subcategory_id: subcat_3.id,
                                 score: 4)

    visit "states/#{state.id}/issues/#{issue.id}"

    assert page.has_content? subcat_1.title
    assert page.has_content? subcat_2.title
    assert page.has_content? subcat_3.title
  end
end

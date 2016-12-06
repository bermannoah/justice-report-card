require "test_helper"

class CanViewSubcategoriesFromIssueShowPageTest < Capybara::Rails::TestCase
  def setup
    Rails.application.load_seed
  end

  test "subcategories listed on issue show page" do
    state = create(:state)
    issue = Issue.find_by(title: "Bias-Motivated Harassment and Crime")
    subcat_1, subcat_2, subcat_3 = issue.subcategories.limit(3)
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

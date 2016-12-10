require "test_helper"

class CanViewSubcatAndCatScoresTest < Capybara::Rails::TestCase
  test "category and subcategory scores shown on show page" do
    issue = create(:issue)
    category_1 = create(:category, issue_id: issue.id)
    subcategory_1 = create(:subcategory, category_id: category_1.id)
    category_2 = create(:category, issue_id: issue.id)
    subcategory_2a = create(:subcategory, category_id: category_2.id)
    subcategory_2b = create(:subcategory, category_id: category_2.id)

    region = create(:region)
    division = create(:division, region_id: region.id)
    state = create(:state, division_id: division.id)
    subcategory_score_1 = create(:subcategory_score,
                                 subcategory_id: subcategory_1.id,
                                 score: 3,
                                 state: state
                                 )
    subcategory_score_2a = create(:subcategory_score,
                                  subcategory_id: subcategory_2a.id,
                                  score: 1,
                                  state: state
                                  )
    subcategory_score_2b = create(:subcategory_score,
                                  subcategory_id: subcategory_2b.id,
                                  score: 4,
                                  state: state
                                  )

    visit "/states/#{state.id}/issues/#{issue.id}"
    assert page.has_content? "3"
    assert page.has_content? "1"
    assert page.has_content? "4"
    assert page.has_content? "2.5"
  end
end

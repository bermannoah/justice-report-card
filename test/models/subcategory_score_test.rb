require "test_helper"

describe SubcategoryScore do
  it "is valid with subcategory_id, state_id, and score" do
    issue = create(:issue)
    category = create(:category,
                      issue_id: issue.id)
    subcategory = create(:subcategory,
                         category_id: category.id)
    region = create(:region)
    division = create(:division, region_id: region.id)
    state = create(:state, division_id: division.id)
    subcategory_score = SubcategoryScore.create(subcategory_id: subcategory.id,
                                                state_id: state.id,
                                                score: 3)
    value(subcategory_score).must_be :valid?
  end

  it "is invalid without subcategory_id" do
    issue = create(:issue)
    category = create(:category,
                      issue_id: issue.id)
    subcategory = create(:subcategory,
                         category_id: category.id)
    region = create(:region)
    division = create(:division, region_id: region.id)
    state = create(:state, division_id: division.id)
    subcategory_score = SubcategoryScore.create(state_id: state.id,
                                                score: 3)
    value(subcategory_score).must_be :invalid?
  end

  it "is invalid without state_id" do
    issue = create(:issue)
    category = create(:category,
                      issue_id: issue.id)
    subcategory = create(:subcategory,
                         category_id: category.id)
    region = create(:region)
    division = create(:division, region_id: region.id)
    state = create(:state, division_id: division.id)
    subcategory_score = SubcategoryScore.create(subcategory_id: subcategory.id,
                                                score: 3)
    value(subcategory_score).must_be :invalid?
  end

  it "is invalid without score" do
    issue = create(:issue)
    category = create(:category,
                      issue_id: issue.id)
    subcategory = create(:subcategory,
                         category_id: category.id)
    region = create(:region)
    division = create(:division, region_id: region.id)
    state = create(:state, division_id: division.id)
    subcategory_score = SubcategoryScore.create(subcategory_id: subcategory.id,
                                                state_id: state.id)
    value(subcategory_score).must_be :invalid?
  end

  it "has unique state and subcategory arrangement" do
    issue = create(:issue)
    category = create(:category,
                      issue_id: issue.id)
    subcategory = create(:subcategory,
                         category_id: category.id)
    region = create(:region)
    division = create(:division, region_id: region.id)
    state = create(:state, division_id: division.id)
    subcategory_score_1 = SubcategoryScore.create(subcategory_id: subcategory.id,
                                                  state_id: state.id,
                                                  score: 3)
    subcategory_score_2 = SubcategoryScore.create(subcategory_id: subcategory.id,
                                                  state_id: state.id,
                                                  score: 2)
    value(subcategory_score_2).must_be :invalid?
  end
end

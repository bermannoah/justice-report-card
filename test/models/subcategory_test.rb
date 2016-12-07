require "test_helper"

describe Subcategory do
  it "is valid with title, description, category_id" do
    issue = create(:issue)
    category = create(:category,
                      issue_id: issue.id)
    subcategory = Subcategory.create(title: "x",
                                     description: "y",
                                     category_id: category.id)
    value(subcategory).must_be :valid?
  end

  it "is invalid without title" do
    issue = create(:issue)
    category = create(:category,
                      issue_id: issue.id)
    subcategory = Subcategory.create(description: "y",
                                     category_id: category.id)
    value(subcategory).must_be :invalid?
  end

  it "is invalid without description" do
    issue = create(:issue)
    category = create(:category,
                      issue_id: issue.id)
    subcategory = Subcategory.create(title: "x",
                                     category_id: category.id)
    value(subcategory).must_be :invalid?
  end

  it "is invalid without category_id" do
    issue = create(:issue)
    category = create(:category,
                      issue_id: issue.id)
    subcategory = Subcategory.create(title: "x",
                                     description: "y")
    value(subcategory).must_be :invalid?
  end

  it "must have unique title" do
    issue = create(:issue)
    category = create(:category,
                      issue_id: issue.id)
    subcategory_1 = Subcategory.create(title: "x",
                                       description: "y",
                                       category_id: category.id)

    subcategory_2 = Subcategory.create(title: "x",
                                       description: "y",
                                       category_id: category.id)
    value(subcategory_2).must_be :invalid?
  end
end

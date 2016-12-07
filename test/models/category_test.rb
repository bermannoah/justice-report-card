require "test_helper"

describe Category do
  it "is valid with title, description, and issue" do
    issue = create(:issue)
    category = Category.create(title: "x",
                            description: "y",
                            issue_id: issue.id)
    value(category).must_be :valid?
  end

  it "is invalid without title" do
    issue = create(:issue)
    category = Category.create(description: "y",
                            issue_id: issue.id)
    value(category).must_be :invalid?
  end

  it "is invalid without description" do
    issue = create(:issue)
    category = Category.create(title: "x",
                            issue_id: issue.id)
    value(category).must_be :invalid?
  end

  it "is invalid without issue_id" do
    issue = create(:issue)
    category = Category.create(title: "x",
                            description: "y")
    value(category).must_be :invalid?
  end

  it "title must be unique" do
    issue = create(:issue)
    category_1 = Category.create(title: "x",
                                 description: "y",
                                 issue_id: issue.id)
    category_2 = Category.create(title: "x",
                                 description: "y",
                                 issue_id: issue.id)

    value(category_2).must_be :invalid?
  end

end

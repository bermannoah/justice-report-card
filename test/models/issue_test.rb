require "test_helper"

describe Issue do
  it "is valid with title, description" do
    issue = Issue.create(title: "x",
                         description: "y")
    value(issue).must_be :valid?
  end

  it "is invalid without title" do
    issue = Issue.create(description: "y")
    value(issue).must_be :invalid?
  end

  it "is invalid without description" do
    issue = Issue.create(title: "x")
    value(issue).must_be :invalid?
  end

  it "must have unique title" do
    issue_1 = Issue.create(title: "x",
                           description: "y")
    issue_2 = Issue.create(title: "x",
                           description: "y")

    value(issue_2).must_be :invalid?
  end
end

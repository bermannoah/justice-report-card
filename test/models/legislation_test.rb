require "test_helper"

describe Legislation do
  it "is valid with title, description, link, issue_id, and level" do
    issue = create(:issue)
    legislation = Legislation.create(title: "x",
                         description: "y",
                         link: "http://www.example.com",
                         issue_id: issue.id,
                         level: "state")
    value(legislation).must_be :valid?
  end

  it "is invalid without title" do
    issue = create(:issue)
    legislation = Legislation.create(description: "y",
                                     link: "http://www.example.com",
                                     issue_id: issue.id,
                                     level: "state")
    value(legislation).must_be :invalid?
  end

  it "is invalid without description" do
    issue = create(:issue)
    legislation = Legislation.create(title: "x",
                         link: "http://www.example.com",
                         issue_id: issue.id,
                         level: "state")
    value(legislation).must_be :invalid?
  end

  it "is invalid without link" do
    issue = create(:issue)
    legislation = Legislation.create(title: "x",
                         description: "y",
                         issue_id: issue.id,
                         level: "state")
    value(legislation).must_be :invalid?
  end

  it "is invalid without issue_id" do
    issue = create(:issue)
    legislation = Legislation.create(title: "x",
                         description: "y",
                         link: "http://www.example.com",
                         level: "state")
    value(legislation).must_be :invalid?
  end

  it "is invalid without level" do
    issue = create(:issue)
    legislation = Legislation.create(title: "x",
                         description: "y",
                         link: "http://www.example.com",
                         issue_id: issue.id)
    value(legislation).must_be :invalid?
  end

  it "must have valid link" do
    issue = create(:issue)
    legislation = Legislation.create(title: "x",
                         description: "y",
                         link: "ple",
                         issue_id: issue.id,
                         level: "state")
    value(legislation).must_be :invalid?
  end

  it "must have valid level" do
    issue = create(:issue)
    legislation = Legislation.create(title: "x",
                         description: "y",
                         link: "http://www.example.com",
                         issue_id: issue.id,
                         level: "incomplete")
    value(legislation).must_be :invalid?
  end

  it "title must be unique" do
    issue = create(:issue)
    legislation_1 = Legislation.create(title: "x",
                         description: "y",
                         link: "http://www.example.com",
                         issue_id: issue.id,
                         level: "incomplete")
    legislation_2 = Legislation.create(title: "x",
                        description: "y",
                        link: "http://www.example.com",
                        issue_id: issue.id,
                        level: "incomplete")
    value(legislation_2).must_be :invalid?
  end
end

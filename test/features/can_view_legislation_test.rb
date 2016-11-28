require "test_helper"

class CanViewLegislationTest < Capybara::Rails::TestCase
  def setup
    Rails.application.load_seed
  end

  test "legislation shown on issue show page" do
    bias = Issue.find_by(title: "Bias-Motivated Harassment and Crime")
    legislation = Legislation.create(title: "Legislation Example 1",
                               description: "tbd",
                               link: "http://www.example.com",
                               level: "State",
                               issue_id: bias.id)

    visit "/issues/#{bias.id}"

    assert page.has_content? "legislation.title"
    assert page.has_content? "legislation.description"
    assert page.has_content? "legislation.level"
    assert page.has_content? "[link]"
  end
end

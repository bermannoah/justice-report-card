require "test_helper"

class CanViewSubcatAndCatScoresTest < Capybara::Rails::TestCase
  def setup
    Rails.application.load_seed
  end

  test "category and subcategory scores shown on show page" do
    bias = Issue.find_by(title: "Bias-Motivated Harassment and Crime")

    visit "/issues/#{bias.id}"
    assert page.has_content? "5"
    assert page.has_content? "4"
    assert page.has_content? "3"
    assert page.has_content? "2"
    assert page.has_content? "3.2"
  end
end

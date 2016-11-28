require "test_helper"

class CanViewSubcategoriesFromIssueShowPageTest < Capybara::Rails::TestCase
  def setup
    Rails.application.load_seed
  end

  test "subcategories listed on issue show page" do
    bias = Issue.find_by(title: "Bias-Motivated Harassment and Crime")

    visit "/issues/#{bias.id}"

    assert page.has_content? "Sexual Orientation"
    assert page.has_content? "Gender Identity"
    assert page.has_content? "Reporting"
    assert page.has_content? "Collection"
    assert page.has_content? "General"
    assert page.has_content? "LGBTQ"
    assert page.has_content? "Muslim"
    assert page.has_content? "Jewish"
    assert page.has_content? "Immigrant"
    assert page.has_content? "Race"
    assert page.has_content? "Attorney General"
    assert page.has_content? "Immigrant Advocacy Organizations"
  end
end

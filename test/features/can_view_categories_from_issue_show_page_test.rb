require "test_helper"

class CanViewCategoriesFromIssueShowPageTest < Capybara::Rails::TestCase
  def setup
    Rails.application.load_seed
  end

  test "categories listed on issue show page" do
    bias = Issue.find_by(title: "Bias-Motivated Harassment and Crime")

    visit "/issues/#{bias.id}"
    assert page.has_content? "Bias-Motivated Harassment and Crime"
    assert page.has_content? "All residents and visitors have a right"
    assert page.has_content? "Protected Classes"
    assert page.has_content? "Documentation"
    assert page.has_content? "Prosecution of Harassment"
    assert page.has_content? "Prosecution of Crime"
    assert page.has_content? "Victim Support"
    assert page.has_content? "Key Allies"
    assert page.has_content? "Anti-Bias Curriculum in Schools"
    assert page.has_content? "Non-Governmental Leadership"
  end
end

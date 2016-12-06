# require "test_helper"
#
# class CanNavigateToStateAndIssuePageFromHomepageTest < Capybara::Rails::TestCase
#   test "Can view list of issues of issues on homepage" do
#     state = State.new(name: "Colorado")
#     issue = state.issues.new()
#     bias = Issue.find_by(title: "Bias-Motivated Harassment and Crime")
#
#     visit "/issues/#{bias.id}"
#     assert page.has_content? "Bias-Motivated Harassment and Crime"
#     assert page.has_content? "All residents and visitors have a right"
#     assert page.has_content? "Protected Classes"
#     assert page.has_content? "Documentation"
#     assert page.has_content? "Prosecution of Harassment"
#     assert page.has_content? "Prosecution of Crime"
#     assert page.has_content? "Victim Support"
#     assert page.has_content? "Key Allies"
#     assert page.has_content? "Anti-Bias Curriculum in Schools"
#     assert page.has_content? "Non-Governmental Leadership"
#   end
#   # test "sanity" do
#   #   visit root_path
#   #   assert_content page, "Hello World"
#   #   refute_content page, "Goodbye All!"
#   # end
# end

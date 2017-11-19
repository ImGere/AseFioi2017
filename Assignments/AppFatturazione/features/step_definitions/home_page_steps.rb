Given("I'm a non authenticated user") do
  user = FactoryBot.create(:user)
end
When("I visit the home page") do
  visit root_path
end
Then("I should see Home, Sign up and Log in links") do
  expect(page).to have_link("Log in")
  expect(page).to have_link("Home")
  expect(page).to have_link("Sign Up")
end



#Given("I have clients") do

#end
# When("I click on {string}") do |string|
#   click_on string
# end
#
# When("I fill in the form with valid data") do
#   fill_in 'Title', with: 'Il Silmarillion'
#   fill_in 'Isbn', with: 12345678901
#   fill_in 'Year', with: 1955
#   fill_in 'Publisher', with: 'Einaudi'
#
#   click_on 'Create Book'
# end
#
# Then("I should see the new book in the list") do
#   book = Book.last
#   expect(page).to have_content(book.title)
# end
#
# When("I fill in the form with an invalid ISBN") do
#   fill_in 'Title', with: 'Il Silmarillion'
#   fill_in 'Isbn', with: 123
#   fill_in 'Year', with: 1955
#   fill_in 'Publisher', with: 'Einaudi'
#
#   click_on 'Create Book'
# end
#
# Then("I should see an error") do
#   expect(page).to have_css('#error_explanation')
# end

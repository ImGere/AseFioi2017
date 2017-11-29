When("I change my client's name to {string}") do |string|
  @new_name= string
  fill_in 'Name', with: @new_name
end
Then("My client should have the new information") do
  Client.find_by_name(@new_name)==@new_name
end

When("I change the client's email to an already existing one") do
  new_email="test@thistest.com"
  other_client=FactoryBot.create(:client, email: new_email)
  fill_in 'Email', with: new_email
end

When("I change a field to blank") do
  fill_in 'Email', with: ""
end

#When("I destroy my client") do
  #click_on "Destroy"
  #popup = page.driver.browser.window_handles.last
  #page.driver.browser.switch_to.window(popup)
  #within_window(popup) do
  #  click_on("OK")
  #end
  #page.accept_confirm do
  #  click_link 'Destroy'
  #end
#end

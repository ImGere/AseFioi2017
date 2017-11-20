Given("I have an account") do
  @password="blahblah"
  @user=FactoryBot.create(:user, name:"Test User", email:"test_user@gmail.com", password: @password)
end
And("I am logged in") do
  #@user=User.find_by_name("Test User")
  visit login_path
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @password
  click_on "Submit"
  expect(page).to have_link("New client!")
end

Given("I have clients") do
  @client=FactoryBot.create(:client, user:@user)
end
When("I visit the clients page") do
  click_on "Clients"
  click_on "Client List"
end
Then("I should see my client list") do
  expect(page).to have_content(@client.name)
  expect(page).to have_content(@client.codice_fiscale)
  expect(page).to have_content(@client.email)
  expect(page).to have_content(@client.partita_iva)
  expect(page).to have_content(@client.address)
end

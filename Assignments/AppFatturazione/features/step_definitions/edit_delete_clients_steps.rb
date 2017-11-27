When("I change some information about {string}") do |string|
  @new_street_name= string
  fill_in 'Street name', with: @new_street_name
end
Then("My client should have the new information") do
  Client.find(@client.id).street_name=@new_street_name
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
  #page.accept_confirm do
  #  click_link 'Destroy'
  #end
#end
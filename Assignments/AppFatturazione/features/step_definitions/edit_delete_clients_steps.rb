And("I have billed clients for the hours that I've worked") do
  #@invoice=FactoryBot.create(:invoice)
  #@hour.invoice=@invoice
  #@hour.is_fatturata=true
  visit hours_path
  page.check("hour_ids_")
  click_on "Create bill"
  @invoice=Invoice.first
end
When("I change my client's name to {string}") do |string|
  @new_name= string
  fill_in 'Name', with: @new_name
end
Then("My client should have the new information") do
  expect(page).to have_content(@new_name)
end

When("I change the client's email to an already existing one") do
  other_client=FactoryBot.create(:client, email: "newclient@gmail.com")
  fill_in 'Email', with: other_client.email
end

When("I change a field to blank") do
  fill_in 'Email', with: ""
end

Given ("I am on my {string} menu") do |string|
  visit invoices_path
  visit clients_path
end
And("I confirm the popup") do
  popup= page.driver.browser.switch_to.alert
  popup.accept
end
Then ("I should not see that client on my client list") do
  expect(page).to_not have_content(@client.name)
end
And ("All the hours associated to that client should be destroyed") do
  visit hours_path
  #expect(page).to_not have_content(@client.name)
  expect(page).to_not have_content(@hour.description)
end
And("All the invoices billed to that client should be destroyed") do
  visit invoices_path
  expect(page).to_not have_content(@invoice.id)
end

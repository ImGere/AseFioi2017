And("I have billed my client") do
  @invoices= []
  @client.hours.each do |hour|
    invoice=FactoryBot.create(:invoice)
    hour.is_fatturata=true
    hour.invoice=invoice
    hour.save
    invoice.total_amount+=(hour.end_time - hour.start_time).to_i * (@user.tarif/3600)
    invoice.save
    @invoices << invoice
  end
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

Given ("I am on my clients menu") do
  #visit hours_path
  #visit invoices_path
  visit clients_path
end
And("I confirm the popup") do
  popup= page.driver.browser.switch_to.alert
  popup.accept
end
Then ("I should not see {string} on my client list") do |string|
  expect(page).to_not have_content(@client.name)
  expect(page).to_not have_content(@client.codice_fiscale)
  expect(page).to_not have_content(@client.email)
  expect(page).to_not have_content(@client.partita_iva)
  expect(page).to_not have_content(@client.address)
end
And ("All the hours associated to that client should be destroyed") do
  visit hours_path
  @client.hours.each do |hour|
    expect(page).to_not have_content(hour.client.name)
    expect(page).to_not have_content(hour.description)
  end
end
And("All the invoices billed to that client should be destroyed") do
  visit invoices_path
  @invoices.each do |invoice|
    expect(page).to_not have_content(invoice.id)
  end
end

Then("I should see an empty {string} list message") do |string|
  expect(page).to have_content("There are no #{string} for #{@user.name}.")
end

And("I have billed at least one invoice") do
  @invoice=FactoryBot.create(:invoice)
  @hour.is_fatturata=true
  @hour.invoice=@invoice
  @invoice.total_amount=(@hour.end_time - @hour.start_time).to_i * (@user.tarif/3600)
end
Then("I should see the information about the invoices displayed on the page") do
  expect(page).to have_content(@invoice.id)
  expect(page).to have_content(@invoice.total_amount)
  @invoice.hours.each do |hour|
    expect(page).to have_content(hour.client.name)
    expect(page).to have_content(hour.description)
  end
end

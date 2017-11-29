Then("I should see an empty {string} list message") do |string|
  expect(page).to have_content("There are no #{string} for #{@user.name}.")
end

And("I have billed at least one invoice") do
  @invoice=FactoryBot.create(:invoice)
  @hour.is_fatturata=true
  @hour.invoice=@invoice
  @hour.save
  @invoice.total_amount=(@hour.end_time - @hour.start_time).to_i * (@user.tarif/3600)
  @invoice.save
end
Then("I should see how much I've billed for every client") do
  @user.clients.each do |client|
    expect(page).to have_content(client.name)
    total_time = 0
    total_time_billed = 0

    client.hours.each do |hour|
      total_time += (hour.end_time - hour.start_time).to_f
    end
    expect(page).to have_content(total_time/3600)
    client.hours.each do |hour|
      total_time_billed += (hour.end_time - hour.start_time).to_f if hour.is_fatturata
    end

    expect(page).to have_content(total_time_billed/3600)

    #expect(page).to have_content((total_time_billed/3600) * @user.tarif)
  end
end

Then("I should see the total amount of hours worked and billed") do
  total_time=0
  hours=@user.hours.count
  billed_hours= @user.hours.where(is_fatturata: true).count
  @user.hours.each do |hour|
    total_time += (hour.end_time - hour.start_time).to_f
  end
  expect(page).to have_content(hours)
  expect(page).to have_content(billed_hours)
  expect(page).to have_content(total_time/3600)
end

Then("I should see the information about the invoices displayed on the page") do
  expect(page).to have_content(@invoice.id)
  expect(page).to have_content(@invoice.total_amount)
  @invoice.hours.each do |hour|
    expect(page).to have_content(hour.client.name)
    expect(page).to have_content(hour.description)
  end
end

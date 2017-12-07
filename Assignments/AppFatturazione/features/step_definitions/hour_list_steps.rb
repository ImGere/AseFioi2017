Given("I have hours") do
  Client.all.each do |client|
    FactoryBot.create_list(:hour, 3, user:@user, client: client)
  end
end

Then("I should see my hour list") do
  Hour.all.each do |hour|
    expect(page).to have_content(hour.date)
    expect(page).to have_content(hour.start_time.strftime("%H:%M"))
    expect(page).to have_content(hour.end_time.strftime("%H:%M"))
    expect(page).to have_content(hour.description)
    expect(page).to have_content(hour.client.name)
    expect(page).to have_content(hour.is_fatturata)
  end
end

Given("I don't have hours") do
  Hour.all.each do |hour|
    hour.destroy
  end
end
Then("I should not see any hours") do
  expect(page).to_not have_link("Show")
end

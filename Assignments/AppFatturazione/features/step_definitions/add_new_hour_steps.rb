When("I fill in the hour form with valid data") do
  select_date "2012,Jan,1", :from => "Date"
  select_time "09:33", :from => "Start time"
  select_time "16:30", :from => "End time"
  fill_in "Description", with: "Test Activity"
  select "#{Client.first.name}", from: 'hour[client_id]'
end
Then("I should see the details of the new hour") do
  hour=Hour.last
  expect(page).to have_content(hour.date.strftime("%y-%m-%d"))
  expect(page).to have_content(hour.start_time.strftime("%H:%M"))
  expect(page).to have_content(hour.end_time.strftime("%H:%M"))
  expect(page).to have_content(hour.description)
  expect(page).to have_content(hour.user.name)
  expect(page).to have_content(hour.client.name)
end

When("I fill in the hour form with an end time that comes before starting time") do
  select_date "2012,Jan,1", :from => "Date"
  select_time "09:33", :from => "Start time"
  select_time "07:30", :from => "End time"
  fill_in "Description", with: "Test Activity"
  select "#{Client.first.name}", from: 'hour[client_id]'
end

When("I fill in the hour form with an empty description field") do
  select_date "2012,Jan,1", :from => "Date"
  select_time "09:33", :from => "Start time"
  select_time "16:30", :from => "End time"
  fill_in "Description", with: ""
  select "#{Client.first.name}", from: 'hour[client_id]'
end

When("I fill in the hour form with an empty client field") do
  select_date "2012,Jan,1", :from => "Date"
  select_time "09:33", :from => "Start time"
  select_time "16:30", :from => "End time"
  fill_in "Description", with: "Test Activity"
end

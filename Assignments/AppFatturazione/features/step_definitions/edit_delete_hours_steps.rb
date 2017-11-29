And("I change the {string} of an activity to {string}") do |string1, string2|
  fill_in string1, with: string2
end
Then("My hour should have the new description {string}") do |string|
  expect(page).to have_content(string)
end

When("The new End time comes before Start time") do
  select_time "14:33", :from => "Start time"
  select_time "03:30", :from => "End time"
end

When("I change the {string} to empty") do |string|
  fill_in string , with: ""
end

When("I change the client field to empty") do
  select "", from: 'hour[client_id]'
end

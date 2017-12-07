And("I want to edit an hour")do
  click_on "Edit#{Hour.first.id}"
end
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

Given("I am on my hours menu") do
  visit hours_path
end
When("I click on {string} hour") do |string|
  @hour=@client.hours.first
  click_on "#{string}[#{@hour.id}]"
end
Then("I should not see that hour on my hour list") do
  visit hours_path
  expect(page).to_not have_content(@hour.description)
end
